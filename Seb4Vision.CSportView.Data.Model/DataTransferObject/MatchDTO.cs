using System;
using System.Collections.Generic;
using System.Text;
using Seb4Vision.CSportView.Data.Model.Model;

namespace Seb4Vision.CSportView.Data.Model.DataTransferObject
{
    public class MatchDTO
    {
        public long Id { get; set; }
        public long? AwayTeamId { get; set; }
        public long? HomeTeamId { get; set; }
        public string HomeTeam { get; set; }
        public string AwayTeam { get; set; }
        public int? HomeTeamScore { get; set; }
        public int? AwayTeamScore { get; set; }
        public string Venue { get; set; }
        public string Tournament { get; set; }
        public List<PlayerDTO> HomeTeamPlayers { get; set; }
        public List<PlayerDTO> AwayTeamPlayers { get; set; }
        public MatchEventDTO HomeTeamEvents { get; set; }
        public MatchEventDTO AwayTeamEvents { get; set; }
        public int? AwayTeamPossession { get; set; }
        public int? HomeTeamPossession { get; set; }

        public SportVuTeamStat HomeTeamSportVuStats { get; set; }
        public SportVuTeamStat AwayTeamSportVuStats { get; set; }
        public List<TopTeamPerformerDTO> AwayTeamTopPerfomerGoalAttemps { get; set; }
        public List<TopTeamPerformerDTO> HomeTeamTopPerfomerGoalAttemps { get; set; }
        public List<TopTeamPerformerDTO> AwayTeamTopPerfomerDistanceCovered { get; set; }
        public List<TopTeamPerformerDTO> HomeTeamTopPerfomerDistanceCovered { get; set; }
        public List<TopTeamPerformerDTO> AwayTeamTopPerfomerAverageSpeed { get; set; }
        public List<TopTeamPerformerDTO> HomeTeamTopPerfomerAverageSpeed { get; set; }
        public bool IsLiveMatch { get; set; }

        public MatchDTO()
        {
            HomeTeamEvents = new MatchEventDTO();
            AwayTeamEvents = new MatchEventDTO();
            HomeTeamSportVuStats = new SportVuTeamStat();
            AwayTeamSportVuStats = new SportVuTeamStat();

        }

    }
}
