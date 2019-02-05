using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
   public class SportVuPlayerStat
    {
        [Key]
        public long IdSportVuStats { get; set; }
        public string PlayerJeseryNumber { get; set; }
        public string TeamName { get; set; }
        public string AverageSpeedBar { get; set; }
        public string DistanceWalking { get; set; }
        public string DistanceRunning { get; set; }
        public string DistanceSprinting { get; set; }
        public string PlayerCardDistance { get; set; }
        public string PlayerCardSpeed { get; set; }
        public string PlayerCardSprints { get; set; }
        public string PlayerCardHeatMap { get; set; }
        public string SpeedWalking { get; set; }
        public string SpeedRunning { get; set; }
        public string SpeedSprinting { get; set; }
        public string TimePlayed { get; set; }
        public string TopSpeed { get; set; }

        public   SportVuPlayerStat()
        {
           
            AverageSpeedBar = "0";
            DistanceWalking = "0";
            DistanceRunning = "0";
            DistanceSprinting = "0";
            PlayerCardDistance = "0";
            PlayerCardSpeed = "0";
            PlayerCardSprints = "0";
            PlayerCardHeatMap = "0";
            SpeedWalking = "0";
            SpeedRunning = "0";
            SpeedSprinting = "0";
            TimePlayed = "0";
            TopSpeed = "0";
        }
    }
}
