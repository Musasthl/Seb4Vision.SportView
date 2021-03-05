using System;
using System.Collections.Generic;
using System.Text;

namespace Seb4Vision.CSportView.Golf.Data.DTO
{
    public class GolfTournamentDTO
    {
        public string location;

        public long tournamentid { get; set; }
        public string description { get; set; }

        public string coursepar { get; set; }
        public List<GolfPlayerDTO> GolfPlayers { get; set; }
        public string country { get; set; }
        public DateTime begindate { get; set; }
        public DateTime enddate { get; set; }
    }
}
