import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule } from '@angular/router';

import { AppComponent } from './components/app/app.component';
import { NavMenuComponent } from './components/navmenu/navmenu.component';
import { HomeComponent } from './components/home/home.component';
import { HomeNetballComponent } from './components/home/home.netball.component';

import { MyService } from './services/myService';

import { PipeLoopNumber } from './pipe/PipeLoopNumber';
import { NetBallMatchesComponent } from './components/tournamentMatches/netball.matches.component';


import { GolfAPI } from './services/golf.api';
import { GolfHomeComponent } from './components/golf/home/golf.home.component';
import { GolfLeaderboardComponent } from './components/golf/leaderboard/golf.leaderboard.component';

@NgModule({
    declarations: [
        AppComponent,
        NavMenuComponent,

        HomeComponent,
        HomeNetballComponent,
        NetBallMatchesComponent,

        GolfHomeComponent,
        GolfLeaderboardComponent,

        PipeLoopNumber // inclue loop pipe
    ],
    imports: [
        CommonModule,
        HttpModule,
        FormsModule,
        RouterModule.forRoot([
            //{ path: '', redirectTo: 'netball.matches', pathMatch: 'full' },
            //{ path: 'home', component: HomeComponent },
            //{ path: 'netball', component: HomeNetballComponent },
            //{ path: 'netball.matches', component: NetBallMatchesComponent },


            { path: 'golf', component: GolfLeaderboardComponent, pathMatch: 'full' },



            { path: '**', redirectTo: 'golf' }
        ], { useHash: true })
    ],
    providers: [MyService, GolfAPI],
})
export class AppModuleShared {
}
