using System;
using System.Collections.Generic;
using System.Text;

namespace Seb4Vision.CSportView.Golf.Data.DTO
{
    public class GolfPlayerDTO
    {

        public long playerid { get; set; }
        public string firstname { get; set; }

        public string lastname { get; set; }

        public string photopath { get; set; }
        public string country { get; set; }
        public int tournamentstrokes { get; set; }
        public int tournamentpar { get; set; }
        public int tournamentscore { get; set; }
        public bool PlayedInTournament { get; set; }

        public Dictionary<long, GolfPlayerRoundDTO> playerounds = new Dictionary<long, GolfPlayerRoundDTO>();
        public int roundsplayed;
        public long matchid;
        public string courseShortDesc;
        public string courseId;
        public string courseIndexId;
        public string colorCode;

        public int? matchidIndex { get; set; }

        public GolfPlayerDTO()
        {
            for (long i = 1; i <= 4; i++)
            {

                playerounds.Add(i, new GolfPlayerRoundDTO() { roundid = i });
            }
        }
    }

    public class GolfPlayerRoundDTO
    {
        public long roundid { get; set; }
        public int roundstrokes { get; set; }
        public int roundpar { get; set; }
        public int roundscore { get; set; }

        public Dictionary<long, GolfPlayerRoundHoles> holes = new Dictionary<long, GolfPlayerRoundHoles>();
        public int totalholesplayed { get; set; }
        public int roundcompletedstrokes { get; set; }
        public int roundcompletedpar { get; set; }
        public string backstart { get; set; }
        public int? teetime { get; set; }
        public bool first9done { get; set; }
        public bool last9done { get; set; }
        public int first9score { get; set; }
        public int last9score { get; set; }
        public bool played { get; set; }
        public string CourseColorCode { get; set; }

        public GolfPlayerRoundDTO()
        {
            for (int i = 1; i <= 118; i++)
            {

                holes.Add(i, new GolfPlayerRoundHoles() { holeid = i });
            }
        }
    }


    public class GolfPlayerRoundHoles
    {
        public string holestatus;
        public string backstart;

        public long holeid { get; set; }
        public int holestrokes { get; set; }
        public int holepar { get; set; }
        public int holescore { get; set; }

    }




}