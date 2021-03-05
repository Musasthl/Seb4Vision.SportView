import { Component, OnInit } from '@angular/core';
import { MyService } from '../../../services/myService';
import { matchDTO } from '../../../models/matchDTO';
import { playerDTO } from '../../../models/playerDTO';
import { DomSanitizer } from '@angular/platform-browser';
import { ActivatedRoute, Router } from '@angular/router';

import { golfTournamentDTO } from '../../../models/golf/golfTournamentDTO';
import { GolfAPI } from '../../../services/golf.api';

@Component({
    selector: 'golf.leaderboard',
    templateUrl: './golf.leaderboard.component.html',
    styleUrls: ['./golf.leaderboard.component.css'],
})
export class GolfLeaderboardComponent implements OnInit {

    public matchId: any;

    public rightLogo = require("./../../../images/tourlogo.png");
    public leftLogo = require("./../../../images/tournamentlogo.jpg");

    public superSportLogo = require("./../../../images/superSportLogo.png");

    public teamAImageUrl = require("./../../../images/defaultTeamLogo.png");
    public teamBImageUrl = require("./../../../images/defaultTeamLogo.png");

    public redCardUrl = require("./../../../images/redCard.png");
    public yellowCardUrl = require("./../../../images/yellowCard.png");
    public goalBallUrl = require("./../../../images/goalBall.png");
    public ownGoalBallUrl = require("./../../../images/ownGoalBall.png");
    public selectedPlayerTeamLogo = require("./../../../images/defaultTeamLogo.png");
    public teamDefaultLogo = require("./../../../images/defaultTeamLogo.png");

    public selctedPlayerImage: any;
    public defaultPlayerImage = require("./../../../images/defaultPhoto.png");
    public match: matchDTO | any;



    public golfTournament: golfTournamentDTO | any;



    private interval: any;

    public selectedPlayer: playerDTO | any;
    public showSelectedPlayer: boolean = false;

    public showLeaderBoard: boolean = false;

    private autoRefreshInterval: number = 3000; // 3 seconds

    public playerViewTimer: any;
    public playerViewTimerCounter: number = 0;
    public playerViewTimerInterval: number = 30; // 30 Seconds
    public playerViewTimer_is_on: boolean = false;
    public displayPlayerTimeCount: number = 0;


    public homeTeamLogo: any;
    public awayTeamLogo: any;

    public awayTeamHeatMap: any;
    public homeTeamHeatMap: any;
    public selectedPlayerHeatMap: any;
    public teamHeatMapDefaultImage = require("./../../../images/defaultHeatMapImage.png");

    loading: boolean = true;
    sub: any;
    matchQaurterScore: any;

    public selectedRoundId: any;
    public selectedPlayerRoundId: any;


    constructor(private myService: MyService, private golfApi: GolfAPI, private sanitizer: DomSanitizer, private route: ActivatedRoute,
        private router: Router) {





    }
    ngOnInit() {
        this.selectedRoundId = 1;
        this.matchId = '1557397485782';

        // this.refreshData();
        this.interval = setInterval(() => {
            this.refreshData();
        }, this.autoRefreshInterval);

        /*

        this.sub = this.route
            .queryParams
            .subscribe(params => {
                // Defaults to 0 if no query param provided.
               // this.matchId = +params['match'] || 0;

                this.matchId = '1557397485782';

                console.log(this.myService.serviceProperty);
                this.myService.serviceProperty = "Calling API";
                this.selectedPlayer = null;
                // refresh every 5 seconds (5000 milliseconds)

      
            });

        */

    }
    ngOnDestroy() {
        this.sub.unsubscribe();
    }
    refreshData() {

        this.loadGolfTournament();

        // this.loadMatchData();
        // this.loadMatchQuarterScorer();
    }



    loadGolfTournament() {

        console.log(this.golfApi.serviceProperty);
        this.golfApi.getGolfTournament()
            .subscribe(res => {
                console.log("Got golf data....");
                let newGolfTournament = res.json() as golfTournamentDTO;
                if (newGolfTournament !== this.golfTournament
                ) {

                    console.log("updating ui");



                    this.sortTournamentLeaderBoard(newGolfTournament);



                    // this.LoadHomeTeamLogo(this.match.homeTeam);
                    // this.LoaddAwayTeamLogo(this.match.awayTeam);
                }
                this.loading = false;


            }, err => {
                const body = err.json() || "";
                const error = body.error || JSON.stringify(body);
                console.log(err.status); // 500
                console.log(err.statusText); // Internal Server Error
                console.log(body.Source); // MySqlConnector
                console.log(body.Message); // "Connect Timeout expir
            }
            );
    }





    loadMatchData() {
        console.log(this.myService.serviceProperty);
        this.myService.getNetBallGame(this.matchId)
            .subscribe(res => {
                console.log("Got API response");

                // this.match = res.json() as matchDTO;
                let newMatch = res.json() as matchDTO;
                if (newMatch != this.match) {
                    this.match = newMatch;

                    this.LoadHomeTeamLogo(this.match.homeTeam);
                    this.LoaddAwayTeamLogo(this.match.awayTeam);

                    //  this.LoadHomeTeamHeatMapImage(this.match.homeTeamSportVuStats.teamHeatMap);
                    //  this.LoadAwayTeamHeatMapImage(this.match.awayTeamSportVuStats.teamHeatMap);


                    if (this.selectedPlayer != null) {
                        this.reloadSelectedPlayer();
                        // this.LoadSelectedPlayerHeatMapImage(this.selectedPlayer .sportVuPlayerStats.playerCardHeatMap);
                    }

                }
                this.loading = false;

                // this.selectedPlayer = this.match.homeTeamPlayers[0];
                //   console.log(this.selectedPlayer)


            },
                err => {

                    const body = err.json() || "";
                    const error = body.error || JSON.stringify(body);
                    console.log(err.status); // 500
                    console.log(err.statusText); // Internal Server Error
                    console.log(body.Source); // MySqlConnector
                    console.log(body.Message); // "Connect Timeout expir

                }
            );
    }

    loadMatchQuarterScorer() {
        this.myService.GetAllNetBallQuarterScore(this.matchId)
            .subscribe(res => {
                console.log("Got API response");
                this.matchQaurterScore = res.json() as any;

                //       this.loading = false;

                // this.selectedPlayer = this.match.homeTeamPlayers[0];
                //   console.log(this.selectedPlayer)


            },
                err => {
                    //   this.loading = false;
                    const body = err.json() || "";
                    const error = body.error || JSON.stringify(body);
                    console.log(err.status); // 500
                    console.log(err.statusText); // Internal Server Error
                    console.log(body.Source); // MySqlConnector
                    console.log(body.Message); // "Connect Timeout expir

                }
            );
    }

    returnEmptyIfZero(val: any) {
        if (val == '0.00' || val == '0,00')
            return '';
        return val;
    }

    LoadHomeTeamLogo(teamName: any) {
        console.log("API - Get home team logo");
        this.myService.getTeamLogo(teamName)
            .subscribe(res => {
                if (res.status == 200) {
                    console.log("API - Home team logo Response");
                    //   console.log(res.text());
                    if (res != null) {
                        this.homeTeamLogo = this.sanitizer.bypassSecurityTrustResourceUrl("data:image/png;base64," + res.text().substr(1, res.text().length - 2));
                    } else
                        this.homeTeamLogo = this.teamDefaultLogo;
                } else {
                    console.log("API -Home team Logo Unknown Response");
                }
            },
                err => {
                    this.homeTeamLogo = this.teamDefaultLogo;
                    const body = err.json() || "";
                    const error = body.error || JSON.stringify(body);
                    console.log(err.status); // 500
                    console.log(err.statusText); // Internal Server Error
                    console.log(body.Source); // MySqlConnector
                    console.log(body.Message); // "Connect Timeout expir
                }
            );
    }


    LoaddAwayTeamLogo(teamName: any) {
        console.log("API - Get Away team logo")
        this.myService.getTeamLogo(teamName)
            .subscribe(res => {
                if (res.status == 200) {
                    console.log("API - Away team logo Response");
                    //   console.log(res.text());
                    if (res != null) {
                        this.awayTeamLogo = this.sanitizer.bypassSecurityTrustResourceUrl("data:image/png;base64," + res.text().substr(1, res.text().length - 2));
                    } else
                        this.awayTeamLogo = this.teamDefaultLogo;




                } else {
                    console.log("API -Away team Logo Unknown Response");
                }
            },
                err => {
                    this.awayTeamLogo = this.teamDefaultLogo;
                    const body = err.json() || "";
                    const error = body.error || JSON.stringify(body);
                    console.log(err.status); // 500
                    console.log(err.statusText); // Internal Server Error
                    console.log(body.Source); // MySqlConnector
                    console.log(body.Message); // "Connect Timeout expir
                }
            );
    }

    loadSelectedPlayerTeamLogo() {
        if (this.selectedPlayer != null) {
            if (this.selectedPlayer.teamID == this.match.awayTeamId) {
                this.selectedPlayerTeamLogo = this.awayTeamLogo;
            } else if (this.selectedPlayer.teamID == this.match.homeTeamId) {
                this.selectedPlayerTeamLogo = this.homeTeamLogo;
            }
        }
    }

    getSelectedPlayerPassAccuracy() {
        if (this.selectedPlayer != null) {
            if (this.selectedPlayer.playerEvents.completedPasses + this.selectedPlayer.playerEvents.unCompletedPasses > 0)
                return Math.round(((this.selectedPlayer.playerEvents.completedPasses * 1.0) /
                    (this.selectedPlayer.playerEvents.completedPasses + this.selectedPlayer.playerEvents.unCompletedPasses)) *
                    100);
        }
        return 0;
    }


    LoadAwayTeamHeatMapImage(imageName: any) {
        console.log("API - Get Away team logo")
        if (imageName == "") {
            this.awayTeamHeatMap = this.teamHeatMapDefaultImage;
            return;
        }
        this.myService.getTeamHeatMap(imageName)
            .subscribe(res => {
                if (res.status == 200) {
                    console.log("API - Away team heatmap Response");
                    //   console.log(res.text());
                    if (res != null) {
                        this.awayTeamHeatMap = this.sanitizer.bypassSecurityTrustResourceUrl("data:image/png;base64," + res.text().substr(1, res.text().length - 2));
                    } else
                        this.awayTeamHeatMap = this.teamDefaultLogo;
                } else {
                    console.log("API -Away team Logo Unknown Response");
                }
            },
                err => {
                    this.awayTeamHeatMap = this.teamHeatMapDefaultImage;
                    const body = err.json() || "";
                    const error = body.error || JSON.stringify(body);
                    console.log(err.status); // 500
                    console.log(err.statusText); // Internal Server Error
                    console.log(body.Source); // MySqlConnector
                    console.log(body.Message); // "Connect Timeout expir
                }
            );
    }



    LoadHomeTeamHeatMapImage(imageName: any) {
        console.log("API - Get Away team logo")
        if (imageName == "") {
            this.homeTeamHeatMap = this.teamHeatMapDefaultImage;
            return;
        }

        this.myService.getTeamHeatMap(imageName)
            .subscribe(res => {
                if (res.status == 200) {
                    console.log("API - Away team heatmap Response");
                    //   console.log(res.text());
                    if (res != null) {
                        this.homeTeamHeatMap = this.sanitizer.bypassSecurityTrustResourceUrl("data:image/png;base64," + res.text().substr(1, res.text().length - 2));
                    } else
                        this.homeTeamHeatMap = this.teamDefaultLogo;
                } else {
                    console.log("API -Away team Logo Unknown Response");
                }
            },
                err => {
                    this.homeTeamHeatMap = this.teamHeatMapDefaultImage;
                    const body = err.json() || "";
                    const error = body.error || JSON.stringify(body);
                    console.log(err.status); // 500
                    console.log(err.statusText); // Internal Server Error
                    console.log(body.Source); // MySqlConnector
                    console.log(body.Message); // "Connect Timeout expir
                }
            );
    }



    LoadSelectedPlayerHeatMapImage(imageName: any) {
        console.log("API - Get Away team logo")
        if (imageName == "") {
            this.selectedPlayerHeatMap = this.teamHeatMapDefaultImage;
            return;
        }

        this.myService.getTeamHeatMap(imageName)
            .subscribe(res => {
                if (res.status == 200) {
                    console.log("API - Away team heatmap Response");
                    //   console.log(res.text());
                    if (res != null) {
                        this.selectedPlayerHeatMap = this.sanitizer.bypassSecurityTrustResourceUrl("data:image/png;base64," + res.text().substr(1, res.text().length - 2));
                    } else
                        this.selectedPlayerHeatMap = this.teamDefaultLogo;
                } else {
                    console.log("API -Away team Logo Unknown Response");
                }
            },
                err => {
                    this.selectedPlayerHeatMap = this.teamHeatMapDefaultImage;
                    const body = err.json() || "";
                    const error = body.error || JSON.stringify(body);
                    console.log(err.status); // 500
                    console.log(err.statusText); // Internal Server Error
                    console.log(body.Source); // MySqlConnector
                    console.log(body.Message); // "Connect Timeout expir
                }
            );
    }


    onPlayerClick(tournamentId: any, player: any) {

        this.selectedPlayer = player;
        this.selectedPlayerRoundId = this.selectedRoundId;
        if (player.photopath != "") {
            this.loadPlayerPhoto(player.photopath);
            //  this.LoadSelectedPlayerHeatMapImage(this.selectedPlayer.sportVuPlayerStats.playerCardHeatMap);
        } else {
            this.selctedPlayerImage = this.defaultPlayerImage;
            //   this.selectedPlayerHeatMap = this.teamHeatMapDefaultImage;
        }
        this.showSelectedPlayer = true;
        //  this.startPlayerTimerCount(); 
    }

    loadPlayerPhoto(photoPath: any) {
        console.log("API - Get photo")
        // photoPath = this.sanitizer.bypassSecurityTrustUrl(photoPath);
        this.myService.getPhoto(photoPath)
            .subscribe(res => {
                if (res.status == 200) {
                    console.log("API - Photo Response");
                    //   console.log(res.text());
                    if (res != null) {
                        this.selctedPlayerImage = this.sanitizer.bypassSecurityTrustResourceUrl("data:image/png;base64," + res.text().substr(1, res.text().length - 2));
                    } else
                        this.selctedPlayerImage = this.defaultPlayerImage;
                } else {
                    console.log("API - Unknown Response");
                }
            },
                err => {
                    this.selctedPlayerImage = this.defaultPlayerImage;
                    const body = err.json() || "";
                    const error = body.error || JSON.stringify(body);
                    console.log(err.status); // 500
                    console.log(err.statusText); // Internal Server Error
                    console.log(body.Source); // MySqlConnector
                    console.log(body.Message); // "Connect Timeout expir
                }
            );
    }

    reloadSelectedPlayer() {
        if (this.selectedPlayer != null) {
            var id = this.selectedPlayer.playerID
            if (this.match.homeTeamId == this.selectedPlayer.teamID) {
                let player = this.getPlayerFromList(this.match.homeTeamPlayers)
                if (player != null)
                    this.selectedPlayer = player;
            } else if (this.match.awayTeamId == this.selectedPlayer.teamID) {
                let player = this.getPlayerFromList(this.match.awayTeamPlayers)
                if (player != null)
                    this.selectedPlayer = player;
            }
        }
    }

    getPlayerFromList(playerList: playerDTO[]) {
        if (this.selectedPlayer.playerID != null)
            for (var i in playerList) {
                if (playerList[i].playerID == this.selectedPlayer.playerID) {
                    return playerList[i];
                }
            }
        return null;
    }

    goBackToMain() {
        this.selectedPlayer = null;
        this.selctedPlayerImage = this.defaultPlayerImage;;
        this.selectedPlayerTeamLogo = this.teamDefaultLogo;;
        this.showSelectedPlayer = false;
    }

    getPlayerPhotoUrl() {


        return this.selctedPlayerImage;
        // return ( require( "C:/WORK/PSL_Photos_2017-2018/Bidvest%20Wits/Anthony_Gordinho.png"));
        // return this.sanitizer.bypassSecurityTrustUrl( ;
    }

    getPlayerTeamLogoUrl() {
        this.loadSelectedPlayerTeamLogo();
        return this.selectedPlayerTeamLogo;
    }

    playerTimerCount() {
        this.displayPlayerTimeCount = this.playerViewTimerInterval - this.playerViewTimerCounter;
        this.playerViewTimerCounter += 1;
        if (this.displayPlayerTimeCount == 0) {
            this.stopPlayerTimerCount();
            this.goBackToMain()
        } else
            this.playerViewTimer = setTimeout(this.playerTimerCount, 1000);
    }

    startPlayerTimerCount() {
        /*  if (!this.playerViewTimer_is_on &&  this.showSelectedPlayer ) {
              this.playerViewTimerCounter = 0;
              this.playerViewTimer_is_on = true;
              this.playerTimerCount();
          }
          */
        this.stopPlayerTimerCount();
        if (this.showSelectedPlayer) {
            this.playerTimerCount();
        }
    }

    stopPlayerTimerCount() {
        clearTimeout(this.playerViewTimer);
        this.playerViewTimer_is_on = false;
    }

    showPlayerShortDescription(player: string) {
        if (player.toLowerCase() == "cpt" || player.toLowerCase() == "coach" || player.toLowerCase() == "ast. coach") {

            return true;
        }
        return false;
    }

    public getPlayerTournmanetSocre(player: any) {

        if (player.tournamentscore == undefined)
            return "-";

        if (player.tournamentscore > 0)
            return "+" + player.tournamentscore;
        return player.tournamentscore;
    }

    public getPlayerRoundSocre(player: any) {


        let round = player.playerounds[this.selectedRoundId];

        if (round.roundscore == undefined)
            return "-";

        if (round.roundscore > 0)
            return "+" + round.roundscore;
        return round.roundscore;
    }

    public getPlayerRoundSocreByRoundId(roundId: any,player: any) {


        let round = player.playerounds[roundId];

        if (round.roundscore == undefined)
            return "";

        if (round.roundscore > 0)
            return "SCORE: +" + round.roundscore;

        if (round.roundscore == 0) {
            return "";
        }


        return "SCORE: " + round.roundscore;
    }

    public getPlayerRoundStrokes(roundId: any, player: any) {


        let round = player.playerounds[roundId];

        if (round.roundstrokes == undefined)
            return "-";
        return round.roundstrokes;
    }


    public getPlayerRoundCompletedHoles(roundId: any, player: any) {


        let round = player.playerounds[roundId];

        if (round.totalholesplayed == undefined)
            return "-";

        if (round.totalholesplayed == 18) {

            if (round.backstart == "1")
                return round.roundstrokes + "*";
            return round.roundstrokes;
        }

        if (round.backstart == "1")
            return round.totalholesplayed + "*";

        return round.totalholesplayed;
    }

    public getPlayerRoundHolePar(roundId: any, player: any, index: any) {
        let round = player.playerounds[roundId];

        let hole = round.holes[index];

        if (hole.holepar == undefined)
            return "-";


        if (hole.holepar == 0)
            return "-";

        return hole.holepar;
    }

    public getBackStartStatus(roundId: any, player: any, index: any) {
        /*
         let round = player.playerounds[roundId];

        let hole = round.holes[index];

        if (hole.backstart == undefined)
            return "";


        if (hole.backstart == "1")
            return "*";
        */
        return "";
    }

    public getPlayerRoundHoleStrokeElement(roundId: any, player: any, index: any) {
        let round = player.playerounds[roundId];

        let hole = round.holes[index];

        if (hole.holestrokes == undefined)
            return '<span class="score-stroke">-</span>';

        if (hole.holestrokes == 0)
            return '<span class="score-stroke">-</span>';




        if (hole.holepar != undefined) {
            if (hole.holepar - 2 == hole.holestrokes) {
                return '<span class="score-stroke  score-eagle">' + hole.holestrokes + '</span>';
            }

            if (hole.holepar - 1 == hole.holestrokes) {
                return '<span class="score-stroke  score-birdie">' + hole.holestrokes + '</span>';
            }

            if (hole.holepar == hole.holestrokes) {
                return '<span class="score-stroke  score-par">' + hole.holestrokes + '</span>';
            }

            if (hole.holepar + 1 == hole.holestrokes) {
                return '<span class="score-stroke  score-bogey">' + hole.holestrokes + '</span>';
            }

            if (hole.holepar + 2 <= hole.holestrokes) {
                return '<span class="score-stroke  score-dbl-bogey">' + hole.holestrokes + '</span>';
            }

        }

        return '<span class="score-stroke">' + hole.holestrokes + '</span>';
    }



    public getPlayerRoundHoleStroke(roundId: any, player: any, index: any) {
        let round = player.playerounds[roundId];

        let hole = round.holes[index];

        if (hole.holestrokes == undefined)
            return "-";

        if (hole.holestrokes == 0)
            return "-";
        return hole.holestrokes;
    }

    public getPlayerRoundHoleScore(roundId: any, player: any, index: any) {
        let round = player.playerounds[roundId];

        let hole = round.holes[index];

        if (hole.holescore == undefined)
            return "-";

        if (hole.holescore == 0)
            return "-";
        return hole.holescore;
    }

    public getPlayerRoundHoleScoreColor(roundId: any, player: any, index: any) {
        let round = player.playerounds[roundId];

        let hole = round.holes[index];

        if (hole.holescore == undefined)
            return "-";

        if (hole.holescore == 0)
            return "-";





        return hole.holescore;
    }


    public onRoundChangeClick(roundId: any) {
        this.selectedRoundId = roundId;
        console.log("Change round to: " + roundId);
    }

    public getRoundColor(roundId: any) {
        if (roundId == this.selectedRoundId) {
            const style = {
                background: "red"
            };
            return style;
        }
    }

    public onGoToMainRoundClick(roundId: any) {
        this.selectedRoundId = roundId;
        this.showLeaderBoard = true;
    }


    public reloadGolfSelectedPlayer(golfPlayers: any) {
        if (this.selectedPlayer != null) {
            for (var i in golfPlayers) {
                if (golfPlayers[i].playerid == this.selectedPlayer.playerid) {
                    this.selectedPlayer = golfPlayers[i];
                    return;
                }
            }
        }

    }



    public sortTournamentLeaderBoard(tournament: any) {

        let selectedRoundId = this.selectedRoundId;




        this.reloadGolfSelectedPlayer(tournament.golfPlayers);

        this.golfTournament = tournament;

        var len = this.golfTournament.golfPlayers.sort(function (a: any, b: any) {




            let aRound = a.playerounds[selectedRoundId];
            let bRound = b.playerounds[selectedRoundId];


            if (a.tournamentscore == undefined)
                a.tournamentscore = 0;

            if (b.tournamentscore == undefined)
                b.tournamentscore = 0;

            if (aRound.roundscore == undefined)
                aRound.roundscore = 0;

            if (bRound.roundscore == undefined)
                bRound.roundscore = 0;


            if (aRound.totalholesplayed == undefined)
                aRound.totalholesplayed = 0;

            if (bRound.totalholesplayed == undefined)
                bRound.totalholesplayed = 0;

            // Tournament score


            console.log("A = " + a.tournamentscore + " B = " + b.tournamentscore)
            // If the first item has a higher number, move it down
            // If the first item has a lower number, move it up
            if (a.tournamentscore > b.tournamentscore) return 1;
            if (a.tournamentscore < b.tournamentscore) return -1;


            	// If the tournamentscore number is the same between both items, sort by round
            if (aRound.roundscore > bRound.roundscore) return 1;
            if (aRound.roundscore < bRound.roundscore) return -1;

            if (aRound.totalholesplayed > bRound.totalholesplayed) return -1;
            if (aRound.totalholesplayed < bRound.totalholesplayed) return 1;


            if (a.playerid > b.playerid) return -1;
            if (a.playerid < b.playerid) return 1;

            return 0;

        });



        let lastScore = 0;
        let lastPosition = 0;
        for (let i = 0; i < this.golfTournament.golfPlayers.length; i++) {

            if (i == 0) {
                lastPosition = 1;
                this.golfTournament.golfPlayers[i].position = " " + lastPosition;
                lastScore = this.golfTournament.golfPlayers[i].tournamentscore;
                continue;
            }

            if (this.golfTournament.golfPlayers[i].tournamentscore == lastScore) {
                this.golfTournament.golfPlayers[i].position = " ";
            } else {
                lastPosition = lastPosition + 1;
                this.golfTournament.golfPlayers[i].position = " " + lastPosition;
                lastScore = this.golfTournament.golfPlayers[i].tournamentscore;
            }

        }


    }

}
