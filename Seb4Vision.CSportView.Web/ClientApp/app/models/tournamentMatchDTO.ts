export interface tournamentMatchDTO {
    matchID: number;
    awayTeamId: number;
    homeTeamId: number;
    homeTeamName: string;
    awayTeamName: string;
    date: string;
    venue: string;
    tournamentName: string;
    homeTeamScore: number;
    awayTeamScore: number;
    isLiveMatch: boolean;
}