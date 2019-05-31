using System;
using System.Collections.Generic;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class TournamentMatch
    {
        public long MatchID { get; set; }
        public long? HomeTeamID { get; set; }
        public long? AwayTeamID { get; set; }

        public string HomeTeamName { get; set; }
        public string AwayTeamName { get; set; }

        public DateTime? Date { get; set; }

        public string Venue { get; set; }

        public int HomeTeamScore { get; set; }
        public int AwayTeamScore { get; set; }
        public string TournamentName { get; set; }
        public bool IsLiveMatch { get; set; }
        public int? MatchStatusId { get; set; }
    }
}
