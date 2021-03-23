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

        public Dictionary<long, GolfPlayerRoundDTO> playerounds = new Dictionary<long, GolfPlayerRoundDTO>();
        public int roundsplayed;
        public long matchid;

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
        public int totalholesplayed;
        public int roundcompletedstrokes;
        public int roundcompletedpar;
        public string backstart;
        public int? teetime;
        public bool first9done;
        public bool last9done;
        public int first9score;
        public int last9score;

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