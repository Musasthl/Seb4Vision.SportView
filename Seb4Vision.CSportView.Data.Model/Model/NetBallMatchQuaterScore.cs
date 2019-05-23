using System;
using System.Collections.Generic;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class NetBallMatchQuaterScore
    {
        public bool hasData { get; set; }
        public int[] HomeTeamQuarterScore
        {
            get;
            set;
        }

        public int[] AwayTeamQuarterScore
        {
            get;
            set;
        }

        public NetBallMatchQuaterScore()
        {
            HomeTeamQuarterScore = new int[4];
            AwayTeamQuarterScore = new int[4];
        }
    }
}
