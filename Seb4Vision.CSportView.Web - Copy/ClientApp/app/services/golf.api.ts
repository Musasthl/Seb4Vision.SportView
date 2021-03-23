import { Injectable, Inject } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map'
import { ROOT_URL } from '../models/config';

@Injectable()
export class GolfAPI {
    serviceProperty = "Golf Service Created";

    constructor(private http: Http) {
    }


    getGolfTournament() {
        return this.http.get('/api/GolfTournament/Tournament')
    }
     

}