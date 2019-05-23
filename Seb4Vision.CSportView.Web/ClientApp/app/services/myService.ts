import { Injectable, Inject } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map'
import { ROOT_URL } from '../models/config';

@Injectable()
export class MyService {
    serviceProperty = "Service Created";

    constructor(private http: Http) {
    }

    getActiveGame() {
        //   console.log(ROOT_URL + '/Match/GetDetails/'  + ID);
        // http://localhost:61060/api/Match/GetDetails?matchId=1502882987868
        return this.http.get('/api/Match/GetActiveGame')
    }


    getPhoto(photoPath: string) {
        return this.http.get('/api/Match/GetPhotoAsBase64?photoPath=' + encodeURIComponent(photoPath))
    }


    getTeamLogo(teamName: string) {
        return this.http.get('/api/Match/GetTeamLogoAsBase64?teamName=' + encodeURIComponent(teamName))
    }

    getTeamHeatMap(imageName: string) {
        return this.http.get('/api/Match/GetTeamHeatMapImageAsBase64?imageName=' + encodeURIComponent(imageName))
    }

    getNetBallGame(matchId: any) {
        //   console.log(ROOT_URL + '/Match/GetDetails/'  + ID);
        // http://localhost:61060/api/Match/GetDetails?matchId=1502882987868
        return this.http.get('/api/Match/getNetBallGame?matchId=' + matchId)
    }

    getActiveNetBallMatches() {
        //   console.log(ROOT_URL + '/Match/GetDetails/'  + ID);
        // http://localhost:61060/api/Match/GetDetails?matchId=1502882987868
        return this.http.get('/api/TournamentMatch/GetAllNetball')
    }

    
    GetAllNetBallQuarterScore(matchId: any) {
        //   console.log(ROOT_URL + '/Match/GetDetails/'  + ID);
        // http://localhost:61060/api/Match/GetDetails?matchId=1502882987868
        return this.http.get('/api/TournamentMatch/GetAllNetBallQuarterScore?matchId=' + matchId )
    }

}