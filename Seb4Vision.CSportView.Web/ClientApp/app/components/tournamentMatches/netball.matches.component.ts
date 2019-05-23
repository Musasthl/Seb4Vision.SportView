import { Component, OnInit } from '@angular/core';
import { MyService } from '../../services/myService';
import { matchDTO } from '../../models/matchDTO';
import { playerDTO } from '../../models/playerDTO';
import { DomSanitizer } from '@angular/platform-browser';
import { tournamentMatchDTO } from '../../models/tournamentMatchDTO';

import { Router } from '@angular/router';
@Component({
    selector: 'netball.matches',
    templateUrl: './netball.matches.component.html',
    styleUrls: ['./netball.matches.component.css'],
})
export class NetBallMatchesComponent implements OnInit {

    public teamAImageUrl = require("./../../images/defaultTeamLogo.png");
    public teamBImageUrl = require("./../../images/defaultTeamLogo.png");
    public redCardUrl = require("./../../images/redCard.png");
    public yellowCardUrl = require("./../../images/yellowCard.png");
    public goalBallUrl = require("./../../images/goalBall.png");
    public ownGoalBallUrl = require("./../../images/ownGoalBall.png");
    public selectedPlayerTeamLogo = require("./../../images/defaultTeamLogo.png");
    public teamDefaultLogo = require("./../../images/defaultTeamLogo.png");
    
    public selctedPlayerImage: any;
    public defaultPlayerImage = require("./../../images/defaultPhoto.png");
    public tournamentMatches: tournamentMatchDTO[] | any;
    private interval: any;

    public selectedPlayer: playerDTO | any;
    public showSelectedPlayer: boolean = false;

    private autoRefreshInterval: number = 3000; // 3 seconds

 


    public homeTeamLogo: any;
    public awayTeamLogo: any;

    public awayTeamHeatMap: any;
    public homeTeamHeatMap: any;
 

    loading: boolean = true;

    constructor(private myService: MyService, private sanitizer: DomSanitizer, private  router: Router         ) {
    }
    ngOnInit() {
        console.log(this.myService.serviceProperty);
        this.myService.serviceProperty = "Calling API";
 
        // refresh every 5 seconds (5000 milliseconds)
        this.refreshData();
        
 

    }

    refreshData() {
        this.loadMatchData();
    }

    loadMatchData() {
        console.log(this.myService.serviceProperty);
        this.myService.getActiveNetBallMatches()
            .subscribe(res => {
                console.log("Got API response");

                 this.tournamentMatches = res.json() as tournamentMatchDTO[];
     
                 //  this.LoadHomeTeamLogo(this.match.homeTeam);
                  // this.LoaddAwayTeamLogo(this.match.awayTeam); 
 
    
         
                    this.loading = false;

             

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

    openMatch(matchId: any)
    {

     
this.router.navigate(['/netball'  ], { queryParams: { match: matchId } });
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
            

}
