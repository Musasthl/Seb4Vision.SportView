using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class Match
    {
        [Key]
        public long matchID { get; set; }
        public long? HomeTeamID { get; set; }
        public long? AwayTeamID { get; set; }
        public DateTime? DateTimeStamp { get; set; }
        public long? Venue { get; set; }
        public TimeSpan? MinutesPerSide { get; set; }
        public TimeSpan? ETMinutesPerSide { get; set; }
        public int? ActiveGame { get; set; }
        public int? HomeTeamFormation { get; set; }
        public int? AwayTeamFormation { get; set; }
        public int? MatchStatus { get; set; }
        public long? Tournament { get; set; }
        public long? TournamentStageID { get; set; }
        public string TournamentLogo { get; set; }
        public string HomeTeamPossesion { get; set; }
        public string AwayTeamPossesion { get; set; }
        public int? SportCodeID { get; set; }
        public string HomeTeamTerritory { get; set; }
        public string AwayTeamTerritory { get; set; }
        public int? AdminTournament { get; set; }
        public int? HomeTeamScore { get; set; }
        public int? AwayTeamScore { get; set; }
        public int? HomeTeamLogPoint { get; set; }
        public int? AwayTeamLogPoint{ get; set; }
        public int? GroupID { get; set; }
        public string HTMatchTime { get; set; }
        public string ATMatchTime { get; set; }
        public long? LeftToRight { get; set; }
        public long? RightToLeft { get; set; }
        public int? idgametype { get; set; }
        public int? CG_Operator { get; set; }
        public int? Scoring_Operator { get; set; }
    }
}
