import { Component, OnInit } from '@angular/core';
import { MyService } from '../../../services/myService';
import { matchDTO } from '../../../models/matchDTO';
import { playerDTO } from '../../../models/playerDTO';
import { DomSanitizer } from '@angular/platform-browser';
import { ActivatedRoute, Router } from '@angular/router';

import { golfTournamentDTO } from '../../../models/golf/golfTournamentDTO';
import { golfPlayerDTO } from '../../../models/golf/golfPlayerDTO';
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
    public golfTournameHolePlayers: golfPlayerDTO[] | any;
    public golfTournameHoleGroupedPlayers: golfPlayerDTO[] | any;


    public selectedRoundPlayers: golfPlayerDTO[] | any;


    public selctedHolePar: any;

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
    public selectedStatsPageId: any;
    public selectedPlayerRoundId: any;

    public selectedHoleId: any;


    constructor(private myService: MyService, private golfApi: GolfAPI, private sanitizer: DomSanitizer, private route: ActivatedRoute,
        private router: Router) {





    }
    ngOnInit() {
        this.selectedRoundId = 1;
        this.selectedStatsPageId = 1;
        this.selectedHoleId = 1;

        this.matchId = '1557397485782';

       // this.refreshData();
        // Uncomment below for auto refresh
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


                    this.getPlayersOnHole((res.json() as golfTournamentDTO).golfPlayers, this.selectedHoleId);

                    this.getPlayersOnHoleGroup((res.json() as golfTournamentDTO).golfPlayers, this.selectedRoundId, newGolfTournament.pointsFormat);





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

        if (this.golfTournament.pointsFormat == 1 && player.tournamentscore > 0) {
            return "+" + player.tournamentscore;
        }
        return player.tournamentscore;
    }

    public getPlayerRoundSocre(player: any) {


        let round = player.playerounds[this.selectedRoundId];

        if (round.roundscore == undefined)
            return "-";

        if (this.golfTournament.pointsFormat == 1 && round.roundscore > 0)
            return "+" + round.roundscore;
        return round.roundscore;
    }

    public getPlayerRoundSocreByRoundId(roundId: any, player: any) {


        let round = player.playerounds[roundId];

        if (round.roundscore == undefined)
            return "";

        if (this.golfTournament.pointsFormat == 1 && round.roundscore > 0)
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



    public DiPlayerPlayedOnRound(roundId: any, player: any) {


        let round = player.playerounds[roundId];



        return round.played;
    }

    public getPlayerFullRoundStrokes(roundId: any, player: any) {


        let round = player.playerounds[roundId];

        if (round.roundstrokes == undefined)
            return "-";

        if (round.first9done == true && round.last9done == true) {
            if (this.golfTournament.pointsFormat == 1)
                return round.roundstrokes;
            else {
                if (round.backstart == "1")
                    return "F *";
                else
                    return "F";
            }
        }

        return "-";
    }


    public getPlayerRoundCompletedHoles(roundId: any, player: any) {


        let round = player.playerounds[roundId];

        if (round.totalholesplayed == undefined)
            return "-";

        if (round.totalholesplayed == 18) {

            if (round.backstart == "1")
                return '<span class="completed-hole">' + round.roundstrokes + '*</span>';
            return '<span class="completed-hole">' + round.roundstrokes + '</span>';
        }

        if (round.backstart == "1")
            return round.totalholesplayed + "*";

        return round.totalholesplayed;
    }

    public getCourseIndicator(course: any) {
        return '<div class="course-indicator  course-indicator-' + course.index + '"></div>';
    }

    public getCourseIndicatorById(roundId: any, player: any) {
        let round = player.playerounds[roundId];
        return '<div class="course-indicator-big  course-indicator-' + round.courseColorCode + '"></div>';
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


        if (hole.holestrokes == 0 && hole.holestatus != "2")
            //  if (this.golfTournament.pointsFormat == 1)
            return '<span class="score-stroke">-</span>';
        //  else
        //  return '<span class="score-stroke">0</span>';


        if (hole.holepar != undefined && hole.holestatus == "2") {

            if (this.golfTournament.pointsFormat == 1) {
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

                // Need to review the double eagle
                if (hole.holepar - 3 == hole.holestrokes) {
                    return '<span class="score-stroke  score-dbl-eagle">' + hole.holestrokes + '</span>';
                }

            } else {
                if (5 == hole.holestrokes) {
                    return '<span class="score-stroke  score-eagle">' + hole.holestrokes + '</span>';
                }

                if (2 == hole.holestrokes) {
                    return '<span class="score-stroke  score-birdie">' + hole.holestrokes + '</span>';
                }

                if (0 == hole.holestrokes) {
                    return '<span class="score-stroke  score-par">' + hole.holestrokes + '</span>';
                }

                if (-1 == hole.holestrokes) {
                    return '<span class="score-stroke  score-bogey">' + hole.holestrokes + '</span>';
                }

                if (8 <= hole.holestrokes) {
                    return '<span class="score-stroke  score-dbl-eagle">' + hole.holestrokes + '</span>';
                }

                if (-3 >= hole.holestrokes) {
                    return '<span class="score-stroke  score-dbl-bogey">' + hole.holestrokes + '</span>';
                }
            }

        }

        return '<span class="score-stroke">' + hole.holestrokes + '</span>';
    }


    public getPlayerRoundHoleStrokeElementOnTable(roundId: any, player: any, index: any) {
        let round = player.playerounds[roundId];

        let hole = round.holes[index];

        if (hole.holestrokes == undefined)
            return '<span class="score-stroke holestroke-color score-normal">-</span>';

        if (hole.holestrokes == 0 && hole.holestatus != "2")
            // if (this.golfTournament.pointsFormat == 1)
            return '<span class="score-stroke holestroke-color score-normal">-</span>';
        //  else
        //      return '<span class="score-stroke holestroke-color score-normal">0</span>';



        if (hole.holepar != undefined && hole.holestatus == "2") {
            if (this.golfTournament.pointsFormat == 1) {
                if (hole.holepar - 2 == hole.holestrokes) {
                    return '<span class="score-stroke  score-eagle  holestroke-color">' + hole.holestrokes + '</span>';
                }

                if (hole.holepar - 1 == hole.holestrokes) {
                    return '<span class="score-stroke  score-birdie  holestroke-color">' + hole.holestrokes + '</span>';
                }

                if (hole.holepar == hole.holestrokes) {
                    return '<span class="score-stroke  score-par holestroke-color">' + hole.holestrokes + '</span>';
                }

                if (hole.holepar + 1 == hole.holestrokes) {
                    return '<span class="score-stroke  score-bogey holestroke-color">' + hole.holestrokes + '</span>';
                }

                if (hole.holepar + 2 <= hole.holestrokes) {
                    return '<span class="score-stroke  score-dbl-bogey holestroke-color">' + hole.holestrokes + '</span>';
                }
                // Need to review the double eagle
                if (hole.holepar - 3 == hole.holestrokes) {
                    return '<span class="score-stroke  score-dbl-eagle">' + hole.holestrokes + '</span>';
                }

                else return '<span class="score-stroke  holestroke-color score-normal">' + hole.holestrokes + '</span>';
            } else {
                if (5 == hole.holestrokes) {
                    return '<span class="score-stroke  score-eagle  holestroke-color">' + hole.holestrokes + '</span>';
                }

                if (2 == hole.holestrokes) {
                    return '<span class="score-stroke  score-birdie  holestroke-color">' + hole.holestrokes + '</span>';
                }

                if (0 == hole.holestrokes) {
                    return '<span class="score-stroke  score-par holestroke-color">' + hole.holestrokes + '</span>';
                }

                if (-1 == hole.holestrokes) {
                    return '<span class="score-stroke  score-bogey holestroke-color">' + hole.holestrokes + '</span>';
                }

                if (8 <= hole.holestrokes) {
                 
                    return '<span class="score-stroke  score-dbl-eagle holestroke-color">' + hole.holestrokes + '</span>';
                }

                if (-3 >= parseInt(hole.holestrokes)) {
                    return '<span class="score-stroke  score-dbl-bogey">' + hole.holestrokes + '</span>';
                }
                else return '<span class="score-stroke  holestroke-color score-normal">' + hole.holestrokes + '</span>';
            }
        }

        return '<span class="score-stroke holestroke-color score-normal">-</span>';
    }




    public getPlayerRoundHoleStroke(roundId: any, player: any, index: any) {
        let round = player.playerounds[roundId];

        let hole = round.holes[index];

        if (hole.holestrokes == undefined)
            return "-";

        if (hole.holestrokes == 0)
            if (this.golfTournament.pointsFormat == 1)
                return "-";
            else
                return "0";
        return hole.holestrokes;
    }

    public getPlayerRoundHoleScore(roundId: any, player: any, index: any) {
        let round = player.playerounds[roundId];

        let hole = round.holes[index];

        if (hole.holescore == undefined)
            return "-";

        if (hole.holescore == 0)
            if (this.golfTournament.pointsFormat == 1)
                return "-";
            else
                return "0";

        return hole.holescore;
    }

    public getPlayerRoundHoleScoreColor(roundId: any, player: any, index: any) {
        let round = player.playerounds[roundId];

        let hole = round.holes[index];

        if (hole.holescore == undefined)
            return "-";

        if (hole.holescore == 0)
            if (this.golfTournament.pointsFormat == 1)
                return "-";
            else
                return "0";





        return hole.holescore;
    }

    public getPlayerRoundHoleStrokes(player: any, roundId: any, index: any) {
        let round = player.playerounds[roundId];

        let hole = round.holes[index];

        if (hole.holestrokes == undefined)
            return "-";

        if (hole.holestrokes == 0)
            if (this.golfTournament.pointsFormat == 1)
                return "-";
            else
                return "0";

        return hole.holestrokes;
    }

    public getPlayerHoleStrokesTotal(player: any, index: any) {

        let total = this._getPlayerHoleStrokeTotal(player, index);
        if (total == 0)
            if (this.golfTournament.pointsFormat == 1)
                return "-";
            else
                return 0;



        return total;
    }

    public getPlayerHoleScoreTotal(player: any, index: any) {

        //  let total = this._getPlayerHoleStrokeTotal(player, index);
        let total = this._getPlayerHoleScoreTotal(player, index);
        if (total == 0)
            if (this.golfTournament.pointsFormat == 1)
                return "-";
            else
                return "0";

        if (total == undefined)
            return "-";



        return total;
    }


    _getPlayerHoleStrokeTotal(player: any, index: any) {
        let r1 = player.playerounds[1];
        let r2 = player.playerounds[2];
        let r3 = player.playerounds[3];
        let r4 = player.playerounds[4];
        // let r5 = player.playerounds[5];


        let r1holeTotal = 0;
        let r1hole = r1.holes[index];

        let r2holeTotal = 0;
        let r2hole = r2.holes[index];

        let r3holeTotal = 0;
        let r3hole = r3.holes[index];

        let r4holeTotal = 0;
        let r4hole = r4.holes[index];

        //let r5holeTotal = 0;
        //let r5hole = r5.holes[index];

        if (r1hole.holestrokes != undefined)
            r1holeTotal = r1hole.holestrokes;

        if (r2hole.holestrokes != undefined)
            r2holeTotal = r2hole.holestrokes;

        if (r3hole.holestrokes != undefined)
            r3holeTotal = r3hole.holestrokes;

        if (r4hole.holestrokes != undefined)
            r4holeTotal = r4hole.holestrokes;


        // if (r5hole.holestrokes != undefined)
        //     r5holeTotal = r5hole.holestrokes;

        // return r1holeTotal + r2holeTotal + r3holeTotal + r4holeTotal + r5holeTotal;

        return r1holeTotal + r2holeTotal + r3holeTotal + r4holeTotal;

    }



    _getPlayerHoleScoreTotal(player: any, index: any) {
        let r1 = player.playerounds[1];
        let r2 = player.playerounds[2];
        let r3 = player.playerounds[3];
        let r4 = player.playerounds[4];
        // let r5 = player.playerounds[5];


        let r1holeTotal = 0;
        let r1hole = r1.holes[index];

        let r2holeTotal = 0;
        let r2hole = r2.holes[index];

        let r3holeTotal = 0;
        let r3hole = r3.holes[index];

        let r4holeTotal = 0;
        let r4hole = r4.holes[index];


        //let r5holeTotal = 0;
        //let r5hole = r5.holes[index];

        if (r1hole.holescore != undefined)
            r1holeTotal = r1hole.holescore;

        if (r2hole.holescore != undefined)
            r2holeTotal = r2hole.holescore;

        if (r3hole.holescore != undefined)
            r3holeTotal = r3hole.holescore;

        if (r4hole.holescore != undefined)
            r4holeTotal = r4hole.holescore;

        //if (r5hole.holescore != undefined)
        //    r5holeTotal = r5hole.holescore;

        //return r1holeTotal + r2holeTotal + r3holeTotal + r4holeTotal + r5holeTotal;
        return r1holeTotal + r2holeTotal + r3holeTotal + r4holeTotal;

    }

    public onRoundChangeClick(roundId: any) {
        this.selectedRoundId = roundId;
        console.log("Change round to: " + roundId);

        this.reloadSelectedRoundPlayerSorted(this.selectedRoundId);
    }


    public onHoleChangeClick(holeId: any) {
        this.selectedHoleId = holeId;

        console.log("Change hole to: " + holeId);
        this.getPlayersOnHole(this.golfTournameHolePlayers.slice(), this.selectedHoleId);
    }


    public onChangeStatePageClick(statePageId: any) {
        this.selectedStatsPageId = statePageId;

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
        this.reloadSelectedRoundPlayerSorted(this.selectedRoundId);
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

        let pointsFormat = tournament.pointsFormat;

        this.reloadGolfSelectedPlayer(tournament.golfPlayers);




        // this.getPlayersOnHole(tournament.golfPlayers.slice(), this.selectedHoleId);

        var len = tournament.golfPlayers.sort(function (a: any, b: any) {




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


            if (aRound.roundstrokes == undefined)
                aRound.roundstrokes = 0;

            if (bRound.roundstrokes == undefined)
                bRound.roundstrokes = 0;



            if (a.tournamentstrokes == undefined)
                a.tournamentstrokes = 0;

            if (b.tournamentstrokes == undefined)
                b.tournamentstrokes = 0;





            // Tournament score


            //   console.log("A = " + a.tournamentscore + " B = " + b.tournamentscore)
            // If the first item has a higher number, move it down
            // If the first item has a lower number, move it up
            // Ascending
            // Line 2 - Leaderboard
            if (((a.tournamentscore > 0 || a.tournamentscore == 0) && a.tournamentstrokes == 0) || ((b.tournamentscore > 0 || b.tournamentscore == 0) && b.tournamentstrokes == 0)) {

                var aTScore = a.tournamentscore;
                var bTScore = b.tournamentscore;
                if (aTScore > 0)
                    aTScore = aTScore * -0.000000001;

                if (bTScore > 0)
                    bTScore = bTScore * -0.000000001;

                if (a.tournamentscore > 0 && b.tournamentscore > 0) {
                    if (aTScore > bTScore) return -1;
                    if (aTScore < bTScore) return 1;
                }

                // Ascending
                if (aTScore > bTScore) return 1;
                if (aTScore < bTScore) return -1;

            } else {

                if (pointsFormat == 1) {
                    // Ascending
                    if (a.tournamentscore > b.tournamentscore) return 1;
                    if (a.tournamentscore < b.tournamentscore) return -1;
                } else {
                    if (a.tournamentscore > b.tournamentscore) return -1;
                    if (a.tournamentscore < b.tournamentscore) return 1;
                }
            }


            // Descending
            if (aRound.totalholesplayed > bRound.totalholesplayed) return -1;
            if (aRound.totalholesplayed < bRound.totalholesplayed) return 1;



            // Ascending
            if (aRound.teetime < bRound.teetime) return -1;
            if (aRound.teetime > bRound.teetime) return 1;



            // Ascending
            if (a.firstname + " " + a.lastname < b.firstname + " " + b.lastname) return -1;
            if (a.firstname + " " + a.lastname > b.firstname + " " + b.lastname) return 1;




            if (pointsFormat == 1) {
                //// If the tournamentscore number is the same between both items, sort by round
                if (aRound.roundscore > bRound.roundscore) return -1;
                if (aRound.roundscore < bRound.roundscore) return 1;
            } else {
                if (aRound.roundscore > bRound.roundscore) return 1;
                if (aRound.roundscore < bRound.roundscore) return -1;
            }





            if (a.playerid > b.playerid) return -1;
            if (a.playerid < b.playerid) return 1;

            return 0;

        });



        let lastScore = 0;
        let lastPosition = 0;
        // Commented out attempting to show players in round
        // tournament.golfPlayers = tournament.golfPlayers.filter((item : any) => item.tournamentstrokes  != 0);

        tournament.golfPlayers = tournament.golfPlayers.filter((item: any) => item.playedInTournament == true);



        for (let i = 0; i < tournament.golfPlayers.length; i++) {

            //if (i == 0) {
            //    lastPosition = 1;
            //    this.golfTournament.golfPlayers[i].position = " " + lastPosition;
            //    lastScore = this.golfTournament.golfPlayers[i].tournamentscore;
            //    continue;
            //}

            //if (this.golfTournament.golfPlayers[i].tournamentscore == lastScore) {
            //    this.golfTournament.golfPlayers[i].position = " ";
            //} else {
            //    lastPosition = lastPosition + 1;
            //    this.golfTournament.golfPlayers[i].position = " " + lastPosition;
            //    lastScore = this.golfTournament.golfPlayers[i].tournamentscore;
            //}

            /*
            if (tournament.golfPlayers[i].tournamentstrokes == 0) {
                // remove element from array
                tournament.golfPlayers =  tournament.golfPlayers.splice(i, 1);
            }

            if (i >= tournament.golfPlayers.length)
                continue;

            */

            if (i == 0) {
                lastPosition = 1;
                tournament.golfPlayers[i].position = " " + (i + 1);
                lastScore = tournament.golfPlayers[i].tournamentscore;
                continue;
            }

            if (tournament.golfPlayers[i].tournamentscore == lastScore) {
                tournament.golfPlayers[i].position = " ";
            } else {
                lastPosition = lastPosition + 1;
                tournament.golfPlayers[i].position = " " + (i + 1);
                lastScore = tournament.golfPlayers[i].tournamentscore;
            }

        }

        this.golfTournament = tournament;



        this.reloadSelectedRoundPlayerSorted(this.selectedRoundId);
    }


    public reloadSelectedRoundPlayerSorted(roundId: any) {
        let lastScore = 0;
        let lastPosition = 0;
        let selectedRoundId = roundId;
        // this.getPlayersOnHoleGroup((res.json() as golfTournamentDTO).golfPlayers, this.selectedRoundId);

        let pointsFormat = this.golfTournament.pointsFormat;

        if (this.golfTournament != undefined) {
            console.log("reloadSelectedRoundPlayerSorted");

            // let golfPlayers = this.golfTournament.golfPlayers.filter((item: any) => item.playerounds[roundId].roundstrokes != 0).slice();
            let golfPlayers = this.golfTournament.golfPlayers.filter((item: any) => item.playerounds[roundId].played == true).slice();

            // Added zero filter
            var len = golfPlayers.sort(function (a: any, b: any) {




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




                if (aRound.roundstrokes == undefined)
                    aRound.roundstrokes = 0;

                if (bRound.roundstrokes == undefined)
                    bRound.roundstrokes = 0;




                if (aRound.roundstrokes == undefined)
                    aRound.roundstrokes = 0;

                if (bRound.roundstrokes == undefined)
                    bRound.roundstrokes = 0;





                if (a.tournamentstrokes == undefined)
                    a.tournamentstrokes = 0;

                if (b.tournamentstrokes == undefined)
                    b.tournamentstrokes = 0;


                // Tournament score


                //   console.log("A = " + a.tournamentscore + " B = " + b.tournamentscore)
                // If the first item has a higher number, move it down
                // If the first item has a lower number, move it up





                // Line 3
                if (((a.tournamentscore > 0 || a.tournamentscore == 0) && a.tournamentstrokes == 0) || ((b.tournamentscore > 0 || b.tournamentscore == 0) && b.tournamentstrokes == 0)) {

                    var aTScore = a.tournamentscore;
                    var bTScore = b.tournamentscore;
                    if (aTScore > 0)
                        aTScore = aTScore * -0.000000001;

                    if (bTScore > 0)
                        bTScore = bTScore * -0.000000001;

                    if (a.tournamentscore > 0 && b.tournamentscore > 0) {

                        if (aTScore > bTScore) return -1;
                        if (aTScore < bTScore) return 1;

                    }


                    // Ascending
                    if (aTScore > bTScore) return 1;
                    if (aTScore < bTScore) return -1;


                } else {

                    if (pointsFormat == 1) {
                        // Ascending
                        if (a.tournamentscore > b.tournamentscore) return 1;
                        if (a.tournamentscore < b.tournamentscore) return -1;
                    } else {
                        if (a.tournamentscore > b.tournamentscore) return -1;
                        if (a.tournamentscore < b.tournamentscore) return 1;
                    }
                }


                // Descending
                if (aRound.totalholesplayed > bRound.totalholesplayed) return -1;
                if (aRound.totalholesplayed < bRound.totalholesplayed) return 1;







                // Ascending
                if (aRound.teetime < bRound.teetime) return -1;
                if (aRound.teetime > bRound.teetime) return 1;




                // Ascending
                if (a.firstname + " " + a.lastname < b.firstname + " " + b.lastname) return -1;
                if (a.firstname + " " + a.lastname > b.firstname + " " + b.lastname) return 1;





                //// If the tournamentscore number is the same between both items, sort by round
                if (pointsFormat == 1) {
                    if (aRound.roundscore > bRound.roundscore) return -1;
                    if (aRound.roundscore < bRound.roundscore) return 1;
                } else {
                    if (aRound.roundscore > bRound.roundscore) return 1;
                    if (aRound.roundscore < bRound.roundscore) return -1;
                }





                if (a.playerid > b.playerid) return -1;
                if (a.playerid < b.playerid) return 1;



                return 0;

            });



            for (let i = 0; i < golfPlayers.length; i++) {


                if (i == 0) {
                    lastPosition = 1;
                    golfPlayers[i].position = " " + (i + 1);
                    lastScore = golfPlayers[i].tournamentscore;
                    continue;
                }

                if (golfPlayers[i].tournamentscore == lastScore) {
                    golfPlayers[i].position = " ";
                } else {
                    lastPosition = lastPosition + 1;
                    golfPlayers[i].position = " " + (i + 1);
                    lastScore = golfPlayers[i].tournamentscore;
                }
            }

            this.selectedRoundPlayers = golfPlayers;
        }
    }

    public getPlayersOnHole(players: any, holeIndex: any) {


        let self = this;
        let myIndex = holeIndex;

        // Hole order
        let len = players.sort(function (a: any, b: any) {





            let aHoleTotal = self._getPlayerHoleScoreTotal(a, myIndex);
            let bHoleTotal = self._getPlayerHoleScoreTotal(b, myIndex);






            // Code cheat for blank
            if (aHoleTotal == 0)
                aHoleTotal = 100;
            if (bHoleTotal == 0)
                bHoleTotal = 100;



            // If the first item has a higher number, move it down
            // If the first item has a lower number, move it up
            if (aHoleTotal > bHoleTotal) return 1;
            if (aHoleTotal < bHoleTotal) return -1;


            //if (aHole.holestrokes > bHole.holestrokes) return 1;
            //if (aHole.holestrokes < bHole.holestrokes) return -1;

            if (a.firstname + " " + a.lastname < b.firstname + " " + b.lastname) return -1;
            if (a.firstname + " " + a.lastname > b.firstname + " " + b.lastname) return 1;


            if (a.playerid > b.playerid) return -1;
            if (a.playerid < b.playerid) return 1;


            return 0;

        });

        let lastScore = 0;
        let lastPosition = 0;
        for (let i = 0; i < players.length; i++) {

            //if (i == 0) {
            //    lastPosition = 1;
            //    this.golfTournament.golfPlayers[i].position = " " + lastPosition;
            //    lastScore = this.golfTournament.golfPlayers[i].tournamentscore;
            //    continue;
            //}

            //if (this.golfTournament.golfPlayers[i].tournamentscore == lastScore) {
            //    this.golfTournament.golfPlayers[i].position = " ";
            //} else {
            //    lastPosition = lastPosition + 1;
            //    this.golfTournament.golfPlayers[i].position = " " + lastPosition;
            //    lastScore = this.golfTournament.golfPlayers[i].tournamentscore;
            //}


            // BEGIN REMOVING ZERO ELEMENTS

            if (players[i].tournamentstrokes == 0) {

                players.splice(i, 1);
            }

            if (i >= players.length)
                continue;

            // END REMOVING ZERO ELEMENTS



            let playerTotal = this._getPlayerHoleScoreTotal(players[i], holeIndex);
            players[i].position = " ";

            if (i == 0) {
                lastPosition = 1;
                players[i].position = " " + (i + 1);
                lastScore = playerTotal;
                continue;
            }

            if (playerTotal == lastScore) {
                players[i].position = " ";
            } else {
                lastPosition = lastPosition + 1;
                players[i].position = " " + (i + 1);
                lastScore = playerTotal;
            }

        }

        console.log("assign to hole stats");
        this.golfTournameHolePlayers = players;
    }



    public getPlayersOnHoleGroup(players: any, selectedRound: any, pointsFormat: number) {


        let self = this;
        let selectedRoundId = selectedRound;


        let key = "matchid";

        let playerHoleGroup = new Array();


        for (let i = 0; i < players.length; i++) {
            let item = players[i];
            if (item.matchid != undefined && item.matchid != "0" && item.matchid != "") {
                const found = playerHoleGroup.find((element: any) => element.matchid == item.matchid);
                if (found != undefined) {

                    found.players.push(item);
                } else {
                    var obj = {
                        matchid: item.matchid,
                        players: new Array()
                    };

                    obj.players.push(item);
                    playerHoleGroup.push(obj);
                }
            }
        }

        var len = playerHoleGroup.sort(function (a: any, b: any) {

            if (a.matchid > b.matchid) return -1;
            if (a.matchid < b.matchid) return 1;
            return 0;
        });


        for (var y = 0; y < playerHoleGroup.length; y++) {
            // Sorting zero
            var pLen = playerHoleGroup[y].players.sort(function (a: any, b: any) {
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


                if (aRound.roundstrokes == undefined)
                    aRound.roundstrokes = 0;

                if (bRound.roundstrokes == undefined)
                    bRound.roundstrokes = 0;



                if (a.tournamentstrokes == undefined)
                    a.tournamentstrokes = 0;

                if (b.tournamentstrokes == undefined)
                    b.tournamentstrokes = 0;


                /* Disabled this when adding match id index sort
                // Descending
                if (aRound.totalholesplayed > bRound.totalholesplayed) return -1;
                if (aRound.totalholesplayed < bRound.totalholesplayed) return 1;



                // TODO: Compare below code line wiht Git to see if it previously existed
                // Line 1
                if (((a.tournamentscore > 0 || a.tournamentscore == 0) && a.tournamentstrokes == 0) || ((b.tournamentscore > 0 || b.tournamentscore == 0) && b.tournamentstrokes == 0)) {

                    var aTScore = a.tournamentscore;
                    var bTScore = b.tournamentscore;
                    if (aTScore > 0)
                        aTScore = aTScore * -0.000000001;

                    if (bTScore > 0)
                        bTScore = bTScore * -0.000000001;

                    if (a.tournamentscore > 0 && b.tournamentscore > 0) {
                        if (aTScore > bTScore) return -1;
                        if (aTScore < bTScore) return 1;
                    }

                    // Ascending
                    if (aTScore > bTScore) return 1;
                    if (aTScore < bTScore) return -1;

                } else {


                    if (pointsFormat == 1) {

                        // Ascending
                        if (a.tournamentscore > b.tournamentscore) return 1;
                        if (a.tournamentscore < b.tournamentscore) return -1;
                    } else {
                        // Descending
                        if (a.tournamentscore > b.tournamentscore) return -1;
                        if (a.tournamentscore < b.tournamentscore) return 1;
                    }
                }

                //// Ascending
                //if (a.tournamentscore > b.tournamentscore) return 1;
                //if (a.tournamentscore < b.tournamentscore) return -1;

                // Ascending
                if (aRound.teetime < bRound.teetime) return -1;
                if (aRound.teetime > bRound.teetime) return 1;



                // Ascending
                if (a.firstname + " " + a.lastname < b.firstname + " " + b.lastname) return -1;
                if (a.firstname + " " + a.lastname > b.firstname + " " + b.lastname) return 1;




                if (pointsFormat == 1) {

                    //// If the tournamentscore number is the same between both items, sort by round
                    if (aRound.roundscore > bRound.roundscore) return -1;
                    if (aRound.roundscore < bRound.roundscore) return 1;
                } else {
                    if (aRound.roundscore > bRound.roundscore) return 1;
                    if (aRound.roundscore < bRound.roundscore) return -1;
                }


                if (a.playerid > b.playerid) return -1;
                if (a.playerid < b.playerid) return 1;
                */
                if (a.matchidIndex > b.matchidIndex) return 1;
                if (a.matchidIndex < b.matchidIndex) return -1;

                return 0;


            })
        }



        console.log(playerHoleGroup);

        this.golfTournameHoleGroupedPlayers = playerHoleGroup;

    }




    public getPlayerRoundFirstStrokes(roundId: any, player: any) {

        var total = 0;
        let round = player.playerounds[roundId];


        if (round.first9done == false) {
            return "-"
        }


        for (var x = 0; x <= 9; x++) {
            if (round.holes[x] != undefined) {
                var strokes = round.holes[x].holestrokes;
                if (strokes != undefined)
                    total = total + strokes;
            }
        }

        if (total == 0)
            return "-";
        return total;
    }


    public getPlayerRoundFinalStrokes(roundId: any, player: any) {


        var total = 0;
        let round = player.playerounds[roundId];


        if (round.last9done == false) {
            return "-"
        }



        for (var x = 10; x <= 18; x++) {
            if (round.holes[x] != undefined) {
                var strokes = round.holes[x].holestrokes;
                if (strokes != undefined)
                    total = total + strokes;
            }
        }

        //var hole = round.holes[holeid];
        //hole.holestrokes += strokes;


        if (total == 0)
            return "-";
        return total;
    }

    public getHolePar(holeNo: any) {

        var res = this.golfTournament.courseholes[holeNo];
        if (res != undefined && res != null) {
            if (res.holeno == holeNo)
                return res.par;
        }

        for (var y = 0; y < 18; y++) {
            var res = this.golfTournament.courseholes[y];
            if (res != undefined && res != null) {
                if (res.holeno == holeNo)
                    return res.par;
            }
        }

        return "-";
    }


    public getCourseStartTotalPar() {
        var total = 0;

        for (var x = 0; x < 9; x++) {
            var res = this.golfTournament.courseholes[x];
            if (this.golfTournament.courseholes[x] != undefined) {

                if (this.golfTournament.courseholes[x].par != undefined)
                    total = total + this.golfTournament.courseholes[x].par;
            }
        }

        if (total == 0)
            return "-";
        return total;
    }

    public getCourseFinalTotalPar() {
        var total = 0;

        for (var x = 9; x < 18; x++) {
            var res = this.golfTournament.courseholes[x];
            if (this.golfTournament.courseholes[x] != undefined) {

                if (this.golfTournament.courseholes[x].par != undefined)
                    total = total + this.golfTournament.courseholes[x].par;
            }
        }

        if (total == 0)
            return "-";
        return total;
    }


    public getCourseTotalPar() {
        var total = 0;

        for (var x = 0; x < 18; x++) {
            var res = this.golfTournament.courseholes[x];
            if (this.golfTournament.courseholes[x] != undefined) {

                if (this.golfTournament.courseholes[x].par != undefined)
                    total = total + this.golfTournament.courseholes[x].par;
            }
        }

        if (total == 0)
            return "-";
        return total;
    }





}
