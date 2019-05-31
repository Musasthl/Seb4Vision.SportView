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

@NgModule({
    declarations: [
        AppComponent,
        NavMenuComponent,
 
        HomeComponent,
        HomeNetballComponent,
        NetBallMatchesComponent,
        PipeLoopNumber // inclue loop pipe
    ],
    imports: [
        CommonModule,
        HttpModule,
        FormsModule,
        RouterModule.forRoot([
            { path: '', redirectTo: 'netball.matches', pathMatch: 'full' },
            { path: 'home', component: HomeComponent },
            { path: 'netball', component: HomeNetballComponent },
            { path: 'netball.matches', component: NetBallMatchesComponent },
            { path: '**', redirectTo: 'home' }
        ], { useHash: true })
    ],
    providers: [MyService],
})
export class AppModuleShared {
}
