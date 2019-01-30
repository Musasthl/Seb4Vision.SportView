import { Component, OnInit } from '@angular/core';
import { MyService } from '../../services/myService';
import { matchDTO } from '../../models/matchDTO';
import { playerDTO } from '../../models/playerDTO';
import { DomSanitizer } from '../../../../node_modules/@angular/platform-browser';


@Component({
    selector: 'home',
    templateUrl: './home.component.html',

})
export class HomeComponent implements OnInit {

    public teamAImageUrl = require("./../../images/teamA.png");
    public teamBImageUrl = require("./../../images/teamA.png");
    public redCardUrl = require("./../../images/redCard.png");
    public yellowCardUrl = require("./../../images/yellowCard.png");
    public goalBallUrl = require("./../../images/goalBall.png");
    public ownGoalBallUrl = require("./../../images/ownGoalBall.png");
    public selectedPlayerTeamLogo = require("./../../images/teamA.png");
    public teamDefaultLogo = require("./../../images/defaultTeamLogo.png");

    public selctedPlayerImage: any;
    public defaultPlayerImage = require("./../../images/defaultPhoto.png");
    public match: matchDTO | any;
    private interval: any;

    public selectedPlayer: playerDTO | any;
    public showSelectedPlayer: boolean = false;

    private autoRefreshInterval: number = 3000; // 3 seconds

    public playerViewTimer: any;
    public playerViewTimerCounter: number = 0;
    public playerViewTimerInterval: number = 30; // 30 Seconds
    public playerViewTimer_is_on: boolean = false;
    public displayPlayerTimeCount: number = 0;


    public homeTeamLogo: any;
    public awayTeamLogo: any;


    loading: boolean = false;

    constructor(private myService: MyService, private sanitizer: DomSanitizer) {
    }
    ngOnInit() {
        console.log(this.myService.serviceProperty)
        this.myService.serviceProperty = "Calling API"
        this.selectedPlayer = null
        // refresh every 5 seconds (5000 milliseconds)
        this.refreshData();
        this.interval = setInterval(() => {
            this.refreshData();
        }, this.autoRefreshInterval);



    }

    refreshData() {
        this.loadMatchData()
    }

    loadMatchData() {
        console.log(this.myService.serviceProperty)
        this.myService.getActiveGame()
            .subscribe(res => {
                console.log("Got API response");

                // this.match = res.json() as matchDTO;
                let newMatch = res.json() as matchDTO;
                if (newMatch != this.match) {
                    this.match = newMatch;
                    if (this.selectedPlayer != null) {
                        this.reloadSelectedPlayer()
                    }
                    this.LoadHomeTeamLogo(this.match.homeTeam);
                    this.LoaddAwayTeamLogo(this.match.awayTeam);
                }

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

    LoadHomeTeamLogo(teamName: any) {
        console.log("API - Get home team logo")
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



    onPlayerClick(matchId: any, player: playerDTO) {

        this.selectedPlayer = player;
        if (player.photoPath != "") {

            this.loadPlayerPhoto(player.photoPath);
        }
        else
            this.selctedPlayerImage = this.defaultPlayerImage;
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
        this.showSelectedPlayer = false;
    }

    getPlayerPhotoUrl() {
        return this.selctedPlayerImage;
        // return ( require( "C:/WORK/PSL_Photos_2017-2018/Bidvest%20Wits/Anthony_Gordinho.png"));
        // return this.sanitizer.bypassSecurityTrustUrl( ;
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


}
