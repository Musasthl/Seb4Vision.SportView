import { playerDTO } from "./playerDTO";
import { MatchEventDTO } from "./matchEventDTO";
import { SportVuTeamStatDTO } from "./sportVuTeamStatDTO";
import { TopTeamPerformerDTO } from  "./topTeamPerformerDTO";
 

export interface matchDTO {
    id: number;
    awayTeamId: number;
    homeTeamId: number;
    homeTeam: string;
    awayTeam: string;
    homeTeamScore: number;
    awayTeamScore: number;
    venue: string;
    tournament: string;
    homeTeamPlayers: playerDTO[];
    awayTeamPlayers: playerDTO[];
    homeTeamEvents: MatchEventDTO;
    awayTeamEvents: MatchEventDTO;
    homeTeamPossession: number;
    awayTeamPossession: number;
    homeTeamSportVuStats: SportVuTeamStatDTO;
    awayTeamSportVuStats: SportVuTeamStatDTO;
    awayTeamTopPerfomerGoalAttemps: TopTeamPerformerDTO;
    homeTeamTopPerfomerGoalAttemps: TopTeamPerformerDTO;
    awayTeamTopPerfomerDistanceCovered: TopTeamPerformerDTO;
    homeTeamTopPerfomerDistanceCovered: TopTeamPerformerDTO;
    awayTeamTopPerfomerAverageSpeed: TopTeamPerformerDTO;
    homeTeamTopPerfomerAverageSpeed: TopTeamPerformerDTO;
}  