using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Seb4Vision.CSportView.Data;
using Seb4Vision.CSportView.Data.Model.DataTransferObject;
using Seb4Vision.CSportView.Data.Repository;

namespace Seb4Vision.CSportView.Web.Controllers
{
    [Route("api/[controller]")]
    [Produces("application/json")]
    public class PlayersController : Controller
    {
        private readonly Seb4VisionCSportViewContext _context;


        public PlayersController(Seb4VisionCSportViewContext context)
        {
            _context = context;
        }



        [HttpGet]
        [Route("GetByTeam")]
        [Produces(typeof(PlayerDTO))]
        public ActionResult GetByTeam(long teamId)
        {
            var list = GetPlayersByTeamId(teamId);
            return Ok(list);
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        public List<PlayerDTO> GetPlayersByTeamId(long? teamId)
        {
            if (teamId == null)
                return null;

            var list = (from player in _context.Players
                            //   join playerType in _context.PlayerType on player.PlayerType equals playerType.PersonType into gj1
                        join playerType in _context.PlayerType on player.PlayerType equals playerType.PlayerPositionsID into gj1
                        where player.TeamID == teamId && player.TeamListPosion != -1
                        from subPlayerType in gj1.DefaultIfEmpty()

                        //join personType in _context.PersonType on player.PersonType equals personType.PersonTypeId into gj2
                        //from subPersonType in gj2.DefaultIfEmpty()
                        join personType in _context.PlayerType on player.PersonType equals personType.PlayerPositionsID into gj2
                        from subPersonType in gj2.DefaultIfEmpty()

                        orderby player.TeamListPosion ascending
                        select new PlayerDTO()
                        {
                            PlayerID = player.PlayerID,
                            TeamID = player.TeamID,
                            Name = player.Name,
                            Surname = player.Surname,
                            PreferredName = player.PreferredName,
                            JerseyNumber = player.JerseyNumber,
                            PhotoPath = player.PhotoPath,
                            Weight = player.Weight,
                            Height = player.Height,
                            Position = subPlayerType.Position,
                            PositionShortDesc = subPlayerType.SortDescription,
                            PersonType = subPersonType.Position,
                            PersonTypeShort = subPersonType.SortDescription

                        }).ToList();
            return list;
        }
    }
}