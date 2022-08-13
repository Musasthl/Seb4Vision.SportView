import { MatchEventDTO } from "./matchEventDTO"; 
import { SportVuPlayerStatDTO } from "./sportvuplayerstatsDTO";

export interface playerDTO {
    playerID: number;
    teamID: number;
    name: string;
    surname: string;
    teamfullname: string;
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
    sportVuPlayerStats: SportVuPlayerStatDTO;
}