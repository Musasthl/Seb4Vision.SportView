using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class MatchEvents
    {
        [Key]
        public long MatchEventId { get; set; }
        public int StatEvent { get; set; }
        public long PlayerID_1 { get; set; }
        public long PlayerID_2 { get; set; }
        public long PlayerID_3 { get; set; }
        public DateTime TimeStamp { get; set; }
        public long TeamID { get; set; }
        public long MatchID { get; set; }
        public int EventHalf { get; set; }
        public string TimeString { get; set; }
        public int EventResult { get; set; }
        public int PlayerTeamListPosision1 { get; set; }
        public string StatExtraInfo { get; set; }

    }
}
