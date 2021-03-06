using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Seb4Vision.CSportView.Golf.Data;
using Seb4Vision.CSportView.Golf.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Seb4Vision.CSportView.Web.Controllers
{
    [Route("api/[controller]")]
    [Produces("application/json")]
    public class GolfTournamentController : Controller
    {
        private readonly Seb4VisionCSportViewGolfContext _context;

        private readonly IConfiguration _config;



        public GolfTournamentController(Seb4VisionCSportViewGolfContext context, IConfiguration config)
        {
            _context = context;
            _config = config;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        [Route("Tournament")]
        [Produces(typeof(GolfTournamentDTO))]
        public ActionResult GetTournament()
        {
            try
            {


                var resPlayers = new Dictionary<long, GolfPlayerDTO>();


                var dbTournament = _context.Tournament.SingleOrDefault(x => x.tournamentid == 1);

                var dbCourse = _context.Course.SingleOrDefault(x => x.courseid == dbTournament.courseid);



                var goftTournament = new GolfTournamentDTO()
                {
                    tournamentid = dbTournament.tournamentid,
                    description = dbTournament.Description,
                    country = dbTournament.Country,
                    begindate = dbTournament.BeginDate,
                    enddate = dbTournament.EndDate,
                    location = dbCourse.Description,
                };


                var connnectionString = _config.GetConnectionString("Seb4VisionCSportViewGolfContext");
                using (var con = new MySql.Data.MySqlClient.MySqlConnection(connnectionString))
                {
                    con.Open();
                    StringBuilder sb = new StringBuilder();
                    sb.Append("SELECT p.PlayerId, r.RoundId, st.HoleId, c.Par, r.description as Round,  p.FirstName, p.LastName, p.PhotoPath, p.Country, sc.back9start, st.HoleStatus, sc.TeeTime  ");
                    sb.Append(", sum(st.strokes) as TotalStrokes, sum(ch.par) as TotalPar,");
                    sb.Append(" sum(st.strokes) - sum(ch.par) as RoundScore");
                    sb.Append(" FROM golf.players p ");
                    sb.Append("left join golf.score sc on sc.playerid = p.playerid ");
                    sb.Append("left join golf.shots st on st.idscore = sc.idscore and st.holestatus in(1, 2, 0) ");
                    sb.Append("left join golf.rounds r on r.roundid = sc.roundid ");
                    sb.Append("left join golf.courseholes ch on ch.idcourseholes = st.holeid ");
                    sb.Append("left join golf.course c on c.courseid = sc.courseid  ");
                    sb.Append("Where  p.playerid <> -1 ");

                    sb.Append("group by p.playerid, p.firstname, p.lastname, p.photopath, r.roundid, st.holeid, sc.back9start, st.HoleStatus ");


                    sb.Append("order by r.Description, RoundScore ");

                    var cmd = new MySql.Data.MySqlClient.MySqlCommand(sb.ToString(), con);

                    var res = cmd.ExecuteReader();
                    if (res.HasRows)
                    {
                        while (res.Read())
                        {
                            var holestatus = "0";
                            var backstart = "0";
                            var teetime = "";

                            var player = new GolfPlayerDTO();
                            player.playerid = long.Parse(res["PlayerId"].ToString());

                            if (res["PhotoPath"] != null)
                                player.photopath = res["PhotoPath"].ToString();

                            if (res["Country"] != null)
                                player.country = res["Country"].ToString();

                            if (!string.IsNullOrEmpty(res["Par"].ToString()))
                            {
                                if (goftTournament.coursepar == null)
                                    goftTournament.coursepar = res["Par"].ToString();
                            }


                            // var roundname = res["LastName"].ToString();
                            var strokes = 0;
                            if (res["TotalStrokes"] != null && !string.IsNullOrWhiteSpace(res["TotalStrokes"].ToString()))
                                strokes = int.Parse(res["TotalStrokes"].ToString());

                            var par = 0;
                            if (res["TotalPar"] != null && !string.IsNullOrWhiteSpace(res["TotalPar"].ToString()))
                                par = int.Parse(res["TotalPar"].ToString());





                            long roundid = -1;
                            if (res["RoundId"] != null && !string.IsNullOrWhiteSpace(res["RoundId"].ToString()))
                                roundid = long.Parse(res["RoundId"].ToString());


                            long holeid = -1;
                            if (res["HoleId"] != null && !string.IsNullOrWhiteSpace(res["HoleId"].ToString()))
                                holeid = long.Parse(res["HoleId"].ToString());

                            if (res["HoleStatus"] != null && !string.IsNullOrWhiteSpace(res["HoleStatus"].ToString()))
                                holestatus = res["HoleStatus"].ToString();


                            if (res["back9start"] != null && !string.IsNullOrWhiteSpace(res["back9start"].ToString()))
                                backstart = res["back9start"].ToString();


                            if (res["TeeTime"] != null && !string.IsNullOrWhiteSpace(res["TeeTime"].ToString()))
                                teetime = res["TeeTime"].ToString();


                            if (resPlayers.ContainsKey(player.playerid))
                            {
                                player = resPlayers[player.playerid];
                            }
                            else
                            {
                                player.firstname = res["FirstName"].ToString();
                                player.lastname = res["LastName"].ToString();
                                resPlayers.Add(player.playerid, player);
                            }

                            if (holestatus == "2")
                            {
                                player.tournamentstrokes += strokes;
                                player.tournamentpar += par;
                            }

                            player.tournamentscore = player.tournamentstrokes - player.tournamentpar;

                            // Round


                            if (roundid != -1 && player.playerounds.ContainsKey(roundid))
                            {
                                player.roundsplayed++;
                                var round = player.playerounds[roundid];

                                round.roundstrokes += strokes;
                                round.roundpar += par;

                                if (holestatus == "2")
                                {
                                    round.roundcompletedstrokes += strokes;
                                    round.roundcompletedpar += par;

                                    round.roundscore = round.roundcompletedstrokes - round.roundcompletedpar;
                                }


                                if (round.teetime == null)
                                {

                                    if (!string.IsNullOrWhiteSpace(teetime))
                                    {
                                        int iTeeTime = 0;
                                        teetime = teetime.Replace(":", "").Trim();
                                        if (int.TryParse(teetime, out iTeeTime))
                                        {
                                            round.teetime = iTeeTime;
                                        }
                                        else round.teetime = 0;
                                    }
                                    else round.teetime = 0;
                                }
                                else
                                {

                                    if (!string.IsNullOrWhiteSpace(teetime))
                                    {
                                        int iTeeTime = 0;
                                        teetime = teetime.Replace(":", "").Trim();

                                        if (int.TryParse(teetime, out iTeeTime))
                                        {
                                            if (round.teetime < iTeeTime)
                                                round.teetime = iTeeTime;
                                        }
                                    }
                                }


                                round.totalholesplayed = 0;

                                // Course
                                if (holeid != -1 && round.holes.ContainsKey(holeid))
                                {
                                    var hole = round.holes[holeid];
                                    hole.holestrokes += strokes;
                                    hole.holepar = par;
                                    if (hole.holestrokes > 0)
                                        hole.holescore = hole.holestrokes - hole.holepar;

                                    hole.holestatus = holestatus;
                                    hole.backstart = backstart;
                                }

                                round.backstart = backstart;
                                round.totalholesplayed = round.holes.Count(x => x.Value.holestatus == "2");


                            }

                        }
                    }

                }


                // goftTournament.GolfPlayers = resPlayers.Select(x => x.Value).OrderBy(x => x.tournamentscore).ToList();
                goftTournament.GolfPlayers = resPlayers.Select(x => x.Value).ToList();
                //select new GolfPlayerDTO()
                //{
                //    playerid = p.playerid,
                //    firstname = p.firstname,
                //    lastname = p.lastname
                //}).ToList<GolfPlayerDTO>();


                if (goftTournament == null)
                {
                    return NotFound();
                }
                return Ok(goftTournament);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, ex);
            }
        }

    }
}
