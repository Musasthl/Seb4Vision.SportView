import { golfPlayerDTO } from "./golfPlayerDTO"; 

export interface golfTournamentDTO {
    tournamentid: number;
    description: string;
    golfPlayers: golfPlayerDTO[];
}  