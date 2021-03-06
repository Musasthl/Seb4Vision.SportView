import { MatchEventDTO } from "./matchEventDTO";

export interface playerDTO {
    playerID: number;
    teamID: number;
    name: string;
    surname: string;
    preferredName: string;
    jerseyNumber: string;
    photoPath: string;
    weight: number;
    height: number;
    position: string;
    positionShortDesc: string;
    personType: string;
    personTypeShort: string;
    playerEvents: MatchEventDTO;
}