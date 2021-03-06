﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Seb4Vision.CSportView.Data;
using Seb4Vision.CSportView.Data.Model;
using Seb4Vision.CSportView.Data.Model.DataTransferObject;
using Seb4Vision.CSportView.Data.Model.Enums;
using Seb4Vision.CSportView.Data.Model.Model;

namespace Seb4Vision.CSportView.Web.Controllers
{

    [Route("api/[controller]")]
    [Produces("application/json")]
    public class MatchController : Controller
    {
        private readonly Seb4VisionCSportViewContext _context;

        public MatchController(Seb4VisionCSportViewContext context)
        {
            _context = context;
        }

        /// <summary>
        /// Get all matches
        /// </summary>
        /// <returns>All the matches which were found.</returns>
        // GET: api/Match
        [HttpGet]
        [Route("GetAll")]
        [Produces(typeof(MatchDTO))]
        public ActionResult GetAll()
        {
            var list = (from match in _context.Match
                        join awayTeam in _context.Teams on match.AwayTeamID equals awayTeam.IdTeams into gj1
                        from subTeamAway in gj1.DefaultIfEmpty()
                        join homeTeam in _context.Teams on match.HomeTeamID equals homeTeam.IdTeams into gj2
                        from subTeamHome in gj2.DefaultIfEmpty()
                        join tournament in _context.AdminTournament on match.Tournament equals tournament.idAdminTournament into gj3
                        from subAdminTournament in gj3.DefaultIfEmpty()
                            //join venue in _context.Venue on match.Venue equals venue.idVenue into gj4
                            //from subVenue in gj4.DefaultIfEmpty()
                        orderby match.DateTimeStamp descending
                        select new MatchDTO()
                        {
                            Id = match.matchID,
                            AwayTeamId = match.AwayTeamID,
                            HomeTeamId = match.HomeTeamID,
                            AwayTeam = subTeamAway.TeamName,
                            HomeTeam = subTeamHome.TeamName,
                            AwayTeamScore = match.AwayTeamScore,
                            HomeTeamScore = match.HomeTeamScore,
                            Tournament = subAdminTournament.Description,
                            //Venue = subVenue.Venue
                        }).Take(30).ToList();
            return Ok(list);
        }



        /// <summary>
        /// Get Match full details, including team list
        /// </summary>
        /// <param name="matchId">Match id of the match you want to get data for</param>
        /// <returns>Returns match details and team line up</returns>
        [HttpGet]
        [Route("GetActiveGame")]
        [Produces(typeof(MatchDTO))]
        public ActionResult GetActiveGame()
        {
            try
            {
                MatchDTO matchDto = (from match in _context.Match
                                     join awayTeam in _context.Teams on match.AwayTeamID equals awayTeam.IdTeams into gj1
                                     from subTeamAway in gj1.DefaultIfEmpty()
                                     join homeTeam in _context.Teams on match.HomeTeamID equals homeTeam.IdTeams into gj2
                                     from subTeamHome in gj2.DefaultIfEmpty()
                                     join tournament in _context.AdminTournament on match.Tournament equals tournament.idAdminTournament into gj3
                                     from subAdminTournament in gj3.DefaultIfEmpty()
                                         //join venue in _context.Venue on match.Venue equals venue.idVenue into gj4
                                         //from subVenue in gj4.DefaultIfEmpty() 
                                         // where match.matchID == matchId
                                     where match.ActiveGame == 1
                                     select new MatchDTO()
                                     {
                                         Id = match.matchID,
                                         AwayTeamId = match.AwayTeamID,
                                         HomeTeamId = match.HomeTeamID,
                                         AwayTeam = subTeamAway.TeamName,
                                         HomeTeam = subTeamHome.TeamName,
                                         AwayTeamScore = match.AwayTeamScore,
                                         HomeTeamScore = match.HomeTeamScore,
                                         Tournament = subAdminTournament.Description,
                                         HomeTeamPossession = Convert.ToInt32(match.HomeTeamPossesion),
                                         AwayTeamPossession = 100 - Convert.ToInt32(match.HomeTeamPossesion),
                                         // Venue = subVenue.Venue
                                     }).FirstOrDefault();
                if (matchDto != null)
                {
                    var playerApi = (new PlayersController(_context));

                    matchDto.HomeTeamPlayers = playerApi.GetPlayersByTeamId(matchDto.HomeTeamId);
                    matchDto.AwayTeamPlayers = playerApi.GetPlayersByTeamId(matchDto.AwayTeamId);

                    GetMatchEvents(matchDto);

                    if (matchDto.HomeTeamPossession == -1)
                    {
                        matchDto.HomeTeamPossession = 0;
                        matchDto.AwayTeamPossession = 0;
                    }
                }
                else
                {
                    return NotFound();
                }
                return Ok(matchDto);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, ex);
            }
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        private void GetMatchEvents(MatchDTO match)
        {
            var matchEvents = _context.MatchEvents.Where(e => e.MatchID == match.Id).ToList<MatchEvents>();
            foreach (var matchEvent in matchEvents)
            {
                switch (matchEvent.StatEvent)
                {
                    case (int)EnumSportEvent.RedCard:
                        {
                            if (matchEvent.TeamID == match.HomeTeamId)
                            {
                                UpdateTeamRedCardEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                            }
                            else if (matchEvent.TeamID == match.AwayTeamId)
                            {
                                UpdateTeamRedCardEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                            }
                        }
                        break;
                    case (int)EnumSportEvent.YellowCard:
                        {
                            if (matchEvent.TeamID == match.HomeTeamId)
                            {
                                UpdateTeamYellowCardEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                            }
                            else if (matchEvent.TeamID == match.AwayTeamId)
                            {
                                UpdateTeamYellowCardEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                            }
                        }
                        break;

                    case (int)EnumSportEvent.OffSides:
                        {
                            if (matchEvent.TeamID == match.HomeTeamId)
                            {
                                UpdateTeamOffSidesEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                            }
                            else if (matchEvent.TeamID == match.AwayTeamId)
                            {
                                UpdateTeamOffSidesEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                            }
                        }
                        break;


                    case (int)EnumSportEvent.Corners:
                        {
                            if (matchEvent.TeamID == match.HomeTeamId)
                            {
                                UpdateTeamCornersEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                            }
                            else if (matchEvent.TeamID == match.AwayTeamId)
                            {
                                UpdateTeamCornersEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                            }
                        }
                        break;
                    case (int)EnumSportEvent.Tackles:
                        {
                            if (matchEvent.TeamID == match.HomeTeamId)
                            {
                                UpdateTeamTacklesEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                            }
                            else if (matchEvent.TeamID == match.AwayTeamId)
                            {
                                UpdateTeamTacklesEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                            }
                        }
                        break;

                    case (int)EnumSportEvent.Fouls:
                        {
                            if (matchEvent.TeamID == match.HomeTeamId)
                            {
                                UpdateTeamFoulsEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                            }
                            else if (matchEvent.TeamID == match.AwayTeamId)
                            {
                                UpdateTeamFoulsEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                            }
                        }
                        break;

                    case (int)EnumSportEvent.ShotsOnTarget1:
                        {
                            if (matchEvent.TeamID == match.HomeTeamId)
                            {
                                UpdateTeamShotOnTargetEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                            }
                            else if (matchEvent.TeamID == match.AwayTeamId)
                            {
                                UpdateTeamShotOnTargetEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                            }
                        }
                        break;
                    case (int)EnumSportEvent.Goal:
                    case (int)EnumSportEvent.OwnGoal:
                    case (int)EnumSportEvent.PenaltyGoal:
                        {
                            if (matchEvent.TeamID == match.HomeTeamId)
                            {
                                if (matchEvent.StatEvent != (int)EnumSportEvent.OwnGoal)
                                    UpdateTeamShotOnTargetEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);

                                if (matchEvent.StatEvent == (int)EnumSportEvent.OwnGoal)
                                    UpdateTeamOwnGoalEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                                else
                                    UpdateTeamGoalEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                            }
                            else if (matchEvent.TeamID == match.AwayTeamId)
                            {
                                if (matchEvent.StatEvent != (int)EnumSportEvent.OwnGoal)
                                    UpdateTeamShotOnTargetEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);

                                if (matchEvent.StatEvent == (int)EnumSportEvent.OwnGoal)
                                    UpdateTeamOwnGoalEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                                else
                                    UpdateTeamGoalEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                            }
                        }
                        break;

                    case (int)EnumSportEvent.ShotsOffTarget:
                        {
                            if (matchEvent.TeamID == match.HomeTeamId)
                            {
                                UpdateTeamShotOffTargetEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                            }
                            else if (matchEvent.TeamID == match.AwayTeamId)
                            {
                                UpdateTeamShotOffTargetEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                            }
                        }
                        break;

                    case (int)EnumSportEvent.CompletedPasses:
                        {
                            if (matchEvent.TeamID == match.HomeTeamId)
                            {
                                UpdateTeamCompletedPassesEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                            }
                            else if (matchEvent.TeamID == match.AwayTeamId)
                            {
                                UpdateTeamCompletedPassesEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                            }
                        }
                        break;

                    case (int)EnumSportEvent.UnCompletedPasses:
                        {
                            if (matchEvent.TeamID == match.HomeTeamId)
                            {
                                UpdateTeamUnCompletedPassesEvent(matchEvent, match.HomeTeamEvents, match.HomeTeamPlayers);
                            }
                            else if (matchEvent.TeamID == match.AwayTeamId)
                            {
                                UpdateTeamUnCompletedPassesEvent(matchEvent, match.AwayTeamEvents, match.AwayTeamPlayers);
                            }
                        }
                        break;

                }
            }

            // Shot Accuracy  percentage
            if (match.HomeTeamEvents.ShotsOnTarget + match.HomeTeamEvents.ShotsOffTarget != 0)
                match.HomeTeamEvents.ShotAccuracy = Math.Round(((match.HomeTeamEvents.ShotsOnTarget * 1.0) / (match.HomeTeamEvents.ShotsOnTarget + match.HomeTeamEvents.ShotsOffTarget)) * 100, 0);
            if (match.AwayTeamEvents.ShotsOnTarget + match.AwayTeamEvents.ShotsOffTarget != 0)
                match.AwayTeamEvents.ShotAccuracy = Math.Round(((match.AwayTeamEvents.ShotsOnTarget * 1.0) / (match.AwayTeamEvents.ShotsOnTarget + match.AwayTeamEvents.ShotsOffTarget)) * 100, 0);
            // Pass accuracy percentage 
            if (match.HomeTeamEvents.CompletedPasses + match.HomeTeamEvents.UnCompletedPasses != 0)
                match.HomeTeamEvents.PassAccuracy = Math.Round(((match.HomeTeamEvents.CompletedPasses * 1.0) / (match.HomeTeamEvents.CompletedPasses + match.HomeTeamEvents.UnCompletedPasses)) * 100, 0);
            if (match.AwayTeamEvents.CompletedPasses + match.AwayTeamEvents.UnCompletedPasses != 0)
                match.AwayTeamEvents.PassAccuracy = Math.Round(((match.AwayTeamEvents.CompletedPasses * 1.0) / (match.AwayTeamEvents.CompletedPasses + match.AwayTeamEvents.UnCompletedPasses)) * 100, 0);



        }

        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamYellowCardEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.YellowCards++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.YellowCards++;
            }
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamRedCardEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.RedCards++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.RedCards++;
            }
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamOffSidesEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.OffSides++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.OffSides++;
            }
        }


        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamCornersEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.Corners++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.Corners++;
            }
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamTacklesEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.Tackles++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.Tackles++;
            }
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamFoulsEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.Fouls++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.Fouls++;
            }
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamShotOnTargetEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.ShotsOnTarget++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.ShotsOnTarget++;
            }
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamGoalEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.Goals++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.Goals++;
            }
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamOwnGoalEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.OwnGoals++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.OwnGoals++;
            }
        }


        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamShotOffTargetEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.ShotsOffTarget++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.ShotsOffTarget++;
            }
        }


        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamCompletedPassesEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.CompletedPasses++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.CompletedPasses++;
            }
        }


        [ApiExplorerSettings(IgnoreApi = true)]
        private void UpdateTeamUnCompletedPassesEvent(MatchEvents matchEvent, MatchEventDTO TeamEvent, List<PlayerDTO> players)
        {
            TeamEvent.UnCompletedPasses++;
            var player = players.Where(p => p.PlayerID == matchEvent.PlayerID_1).SingleOrDefault();
            if (player != null)
            {
                player.PlayerEvents.UnCompletedPasses++;
            }
        }

        [HttpGet]
        [Route("GetPhoto")]
        public async Task<IActionResult> GetPhoto(string photoPath)
        {
            var pos = photoPath.LastIndexOf(".");
            if (pos > 0)
            {
                var extension = photoPath.Substring(pos + 1);

                var image = System.IO.File.OpenRead(photoPath);
                return File(image, "image/" + extension);
            }
            return null;
        }

        [HttpGet]
        [Route("GetPhotoAsBase64")]
        public ActionResult GetPhotoAsBase64(string photoPath)
        {
            try
            {


                var pos = photoPath.LastIndexOf(".");
                if (pos > 0)
                {
                    var extension = photoPath.Substring(pos + 1);

                    byte[] b = System.IO.File.ReadAllBytes(photoPath);
                    return Ok(Convert.ToBase64String(b));
                }
                return NotFound();
            }
            catch (System.IO.DirectoryNotFoundException ex)
            {
                return NotFound();
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
            return NotFound();
        }


        [HttpGet]
        [Route("GetTeamLogoAsBase64")]
        public ActionResult GetTeamLogoAsBase64(string teamName)
        {
            try
            {
                var teamLogoPath = @"C:\WORK\Logos\" + teamName.Replace(" ", "_") + ".png";

                byte[] b = System.IO.File.ReadAllBytes(teamLogoPath);
                return Ok(Convert.ToBase64String(b));

            }
            catch (System.IO.DirectoryNotFoundException ex)
            {
                return NotFound();
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
            return NotFound();
        }
    }
}