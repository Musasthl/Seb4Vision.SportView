using System;
using System.Collections.Generic;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.DataTransferObject
{
    public class PlayerDTO
    {
        public long PlayerID { get; set; }
        public long TeamID { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string PreferredName { get; set; }
        public string JerseyNumber { get; set; }
        public string PhotoPath { get; set; }
        public float Weight { get; set; }
        public float Height { get; set; }
        public string Position { get; set; }
        public string PositionShortDesc { get; set; }
        public string PersonType { get; set; }
        public string PersonTypeShort { get; set; }
        public MatchEventDTO PlayerEvents { get; set; }

        public PlayerDTO()
        {
            PlayerEvents = new MatchEventDTO();
        }
    }
}
