using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.EntityFrameworkCore.Extensions.Internal;
using Seb4Vision.CSportView.Data.Model.Model;

namespace Seb4Vision.CSportView.Data.Repository
{
    public class TournamentMatchRepository : ITournamentMatchRepository
    {
        public List<TournamentMatch> GetAllNetBallTournamentMatches(Seb4VisionCSportViewContext context)
        {
            var tournamentMatches = (from match in context.Match
                                     join homeTeam in context.Teams on match.HomeTeamID equals homeTeam.IdTeams
                                     join awayTeam in context.Teams on match.AwayTeamID equals awayTeam.IdTeams
                                     //join matchEvents in context.MatchEvents on match.matchID equals matchEvents.MatchID
                                     join venue in context.Venue on match.Venue equals venue.idVenue
                                     join tournament in context.Tournament on match.Tournament equals tournament.TournamentID
                                     where match.SportCodeID.Equals(3)
                                     orderby match.DateTimeStamp ascending
                                     // group match by match.matchID into Matchc
                                     select new TournamentMatch
                                     {
                                         MatchID = match.matchID,
                                         IsLiveMatch = (match.ActiveGame == 1),
                                         Date = match.DateTimeStamp,
                                         HomeTeamID = homeTeam.IdTeams,
                                         AwayTeamID = awayTeam.IdTeams,
                                         HomeTeamName = homeTeam.TeamName,
                                         AwayTeamName = awayTeam.TeamName,
                                         Venue = venue.Venue,
                                         TournamentName = tournament.TournamentName,
                                         HomeTeamScore = context.MatchEvents.Count(x =>
                                             x.MatchID == match.matchID && x.TeamID == match.HomeTeamID && x.StatEvent == 18),
                                         AwayTeamScore = context.MatchEvents.Count(x =>
                                             x.MatchID == match.matchID && x.TeamID == match.AwayTeamID && x.StatEvent == 18),
                                     }).ToList();
            return tournamentMatches;
        }

        public NetBallMatchQuaterScore GetAllNetBallQuarterScore(Seb4VisionCSportViewContext context, long matchId
            )
        {
            var netBallMatchQuaterScore = new NetBallMatchQuaterScore();

            /* var querterDescriptions = new string[] { "Q1", "Q2", "Q3", "Q4" };
           
            
            var scores = (from match in context.Match
                          join homeTeam in context.Teams on match.HomeTeamID equals homeTeam.IdTeams
                          join awayTeam in context.Teams on match.AwayTeamID equals awayTeam.IdTeams
                          join matchEvents in context.MatchEvents on match.matchID equals matchEvents.MatchID
                          join gameStages in context.GameStages on matchEvents.EventHalf equals gameStages.idGameStages
                          where match.SportCodeID.Equals(3)
                                && matchEvents.StatEvent.Equals(18)
                                && match.matchID.Equals(matchId)
                                && querterDescriptions.Contains(gameStages.ShortDescription)
                          orderby match.DateTimeStamp ascending
                          select new { TeamID = matchEvents.TeamID, Quarter = gameStages.ShortDescription, Event = matchEvents.StatEvent, IsHomeTeam = (matchEvents.TeamID == match.HomeTeamID) }).ToList();
            // group by new { matchEvents.TeamID, gameStages.ShortDescription }


            if (scores.Count > 0)
                netBallMatchQuaterScore.hasData = true;

            foreach (var item in scores)
            {
                var index = Array.IndexOf(querterDescriptions, item.Quarter);
                if (item.IsHomeTeam)
                    netBallMatchQuaterScore.HomeTeamQuarterScore[index]++;
                else
                    netBallMatchQuaterScore.AwayTeamQuarterScore[index]++;
            }
            */

            var querterDescriptions = new long[] { 21, 23, 25, 27 };

            var scores = (from match in context.Match
                join homeTeam in context.Teams on match.HomeTeamID equals homeTeam.IdTeams
                join awayTeam in context.Teams on match.AwayTeamID equals awayTeam.IdTeams
                join matchEvents in context.MatchEvents on match.matchID equals matchEvents.MatchID
                join gameStages in context.GameStages on matchEvents.EventHalf equals gameStages.idGameStages
                where match.SportCodeID.Equals(3)
                      && matchEvents.StatEvent.Equals(18)
                      && match.matchID.Equals(matchId)
                      && querterDescriptions.Contains(gameStages.idGameStages)
                orderby match.DateTimeStamp ascending
                select new { TeamID = matchEvents.TeamID, Quarter = gameStages.idGameStages, Event = matchEvents.StatEvent, IsHomeTeam = (matchEvents.TeamID == match.HomeTeamID) }).ToList();
            // group by new { matchEvents.TeamID, gameStages.ShortDescription }


            if (scores.Count > 0)
                netBallMatchQuaterScore.hasData = true;

            foreach (var item in scores)
            {
                var index = Array.IndexOf(querterDescriptions, item.Quarter);
                if (item.IsHomeTeam)
                    netBallMatchQuaterScore.HomeTeamQuarterScore[index]++;
                else
                    netBallMatchQuaterScore.AwayTeamQuarterScore[index]++;
            }

            return netBallMatchQuaterScore;
        }
    }


}
