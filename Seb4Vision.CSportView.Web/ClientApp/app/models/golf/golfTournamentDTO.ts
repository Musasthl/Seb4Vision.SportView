import { golfPlayerDTO } from "./golfPlayerDTO"; 

export interface golfTournamentDTO {
    tournamentid: number;
    description: string;
    pointsFormat: number;
    golfPlayers: golfPlayerDTO[];
}  