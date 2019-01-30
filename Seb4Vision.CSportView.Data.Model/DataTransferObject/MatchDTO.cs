using System;
using System.Collections.Generic;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.DataTransferObject
{
    public class MatchDTO
    {
        public long Id { get; set; }
        public long? AwayTeamId { get; set; }
        public long? HomeTeamId { get; set; }
        public string HomeTeam { get; set; }
        public string AwayTeam { get; set; }
        public int? HomeTeamScore { get; set; }
        public int? AwayTeamScore { get; set; }
        public string Venue { get; set; }
        public string Tournament { get; set; }
        public List<PlayerDTO> HomeTeamPlayers { get; set; }
        public List<PlayerDTO> AwayTeamPlayers { get; set; }
        public MatchEventDTO HomeTeamEvents { get; set; }
        public MatchEventDTO AwayTeamEvents { get; set; }
        public int? AwayTeamPossession { get; set; }
        public int? HomeTeamPossession { get; set; }

        public MatchDTO()
        {
            HomeTeamEvents = new MatchEventDTO();
            AwayTeamEvents = new MatchEventDTO();
        }

    }
}
