using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Seb4Vision.CSportView.Golf.Data.DTO
{
    public class GolfTournamentDTO
    {
        public string location;
        public List<GolfTournamentCourseHoleDTO> courseholes;
        public List<GolfTournamentCourseDTO> courses = new List<GolfTournamentCourseDTO>();
        public int pointsFormat;
        public int usePlayerFullTeamName { get; set; }
        public string extraDesc { get; set; }

        public long tournamentid { get; set; }
        public string description { get; set; }

        public string coursepar { get; set; }
        public List<GolfPlayerDTO> GolfPlayers { get; set; }
        public string country { get; set; }
        public DateTime begindate { get; set; }
        public DateTime enddate { get; set; }
   
    }
}
