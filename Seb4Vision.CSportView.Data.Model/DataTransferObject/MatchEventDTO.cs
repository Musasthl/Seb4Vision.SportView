using System;
using System.Collections.Generic;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.DataTransferObject
{
    public class MatchEventDTO
    {
        public int RedCards { get; set; }
        public int YellowCards { get; set; }
        public int OffSides { get; set; }
        public int Corners { get; set; }
        public int Tackles { get; set; }
        public int Fouls { get; set; }
        public int ShotsOnTarget { get; set; }
        public int ShotsOffTarget { get; set; }
        public int CompletedPasses { get; set; }
        public int UnCompletedPasses { get; set; }
        public double PassAccuracy { get; set; }
        public double ShotAccuracy { get; set; }
        public int Goals { get; set; }
        public int OwnGoals { get; set; }

        public int TotalNumberOfSprints { get; set; }
    }
}
