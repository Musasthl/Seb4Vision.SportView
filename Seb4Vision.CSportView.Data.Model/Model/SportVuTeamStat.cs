using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class SportVuTeamStat
    {
        [Key]
        public long IdSportVuTeamStats { get; set; }
        public string TeamName { get; set; }
        public string TeamAvgSpeed { get; set; }
        public string TeamDistance { get; set; }
        public string TeamSpeed { get; set; }
        public string TeamHeatMap { get; set; }
        public string TeamDistanceWalking { get; set; }
        public string TeamDistanceRunning { get; set; }
        public string TeamDistanceSprinting { get; set; }
        public string OffensiveTime { get; set; }
        public string DefensiveTime { get; set; }
        public string OtherTime { get; set; }
        public string TeamSpeedWalking { get; set; }
        public string TeamSpeedRunning { get; set; }
        public string TeamSpeedSprinting { get; set; }
        public string TeamPossession { get; set; }

        public SportVuTeamStat()
        {
            TeamAvgSpeed = "0";
            TeamDistance = "0";
            TeamSpeed = "0";
            TeamHeatMap = "0";
            TeamDistanceWalking = "0";
            TeamDistanceRunning = "0";
            TeamDistanceSprinting = "0";
            OffensiveTime = "0";
            DefensiveTime = "0";
            OtherTime = "0";
            TeamSpeedWalking = "0";
            TeamSpeedRunning = "0";
            TeamSpeedSprinting = "0";
            TeamPossession = "0";
        }
    }

}
