using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Seb4Vision.CSportView.Golf.Data;
using Seb4Vision.CSportView.Golf.Data.DTO;
using Seb4Vision.CSportView.Web.Enums;
using Seb4Vision.CSportView.Web.Helpers;
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

                string appSettingsTournamentId = _config.GetSection("AppSettings").GetSection("TournamentId").Value;




                EGolfPointsFormat pointsFormat = GolfGamePointsFormatHelper.GetPointsFormat(_config.GetSection("AppSettings").GetSection("GolfPointsFormat").Value);

                string usePlayerFullTeamName = "0";
                if (_config.GetSection("AppSettings").GetSection("UsePlayerFullTeamName").Exists())
                    usePlayerFullTeamName = _config.GetSection("AppSettings").GetSection("UsePlayerFullTeamName").Value;




                Golf.Data.Models.Tournament dbTournament = null;

                if (!string.IsNullOrEmpty(appSettingsTournamentId))
                {
                    dbTournament = _context.Tournament.SingleOrDefault(x => x.tournamentid == int.Parse(appSettingsTournamentId));
                }
                else
                    dbTournament = _context.Tournament.SingleOrDefault(x => x.tournamentid == 1);

                var dbCourse = _context.Course.SingleOrDefault(x => x.courseid == dbTournament.courseid);


                var courseholes = _context.CourseHoles.Where(x => x.courseid == dbTournament.courseid).Select(x => new GolfTournamentCourseHoleDTO { holeno = x.HoleNumber, par = x.par }).OrderBy(x => x.holeno).ToList<GolfTournamentCourseHoleDTO>();





                var goftTournament = new GolfTournamentDTO()
                {
                    tournamentid = dbTournament.tournamentid,
                    description = dbTournament.Description,
                    extraDesc = dbTournament.ExtraDesc == null ? string.Empty : dbTournament.ExtraDesc,
                    country = dbTournament.Country,
                    begindate = dbTournament.BeginDate,
                    enddate = dbTournament.EndDate,
                    location = dbCourse.Description,
                    courseholes = courseholes,
                    courses = new List<GolfTournamentCourseDTO>(),
                    pointsFormat = (int)pointsFormat,
                    usePlayerFullTeamName = int.Parse(usePlayerFullTeamName)

                };


                var connnectionString = _config.GetConnectionString("Seb4VisionCSportViewGolfContext");
                using (var con = new MySql.Data.MySqlClient.MySqlConnection(connnectionString))
                {
                    con.Open();
                    StringBuilder sb = new StringBuilder();

                    // sb.Append("SELECT p.PlayerId, r.RoundId, st.HoleId, c.Par, r.description as Round,  p.FirstName, p.LastName, p.PhotoPath, p.Country, sc.back9start, st.HoleStatus, sc.TeeTime, p.MatchId  ");


                    sb.Append("SELECT p.PlayerId, r.RoundId, ch.HoleNumber as HoleId, c.Par, r.description as Round,  p.FirstName, p.LastName, p.TeamFullName, p.PhotoPath, p.Country, sc.back9start, st.HoleStatus, sc.TeeTime, p.MatchId, p.MatchidIndex  ");

                    sb.Append(", sum(st.strokes) as TotalStrokes, sum(ch.par) as TotalPar,");
                    sb.Append(" sum(st.strokes) - sum(ch.par) as RoundScore");
                    sb.Append(" , c.ShortDesc as CourseShortDesc, c.courseid as CourseId, c.colorCode as CourseColorCode ");

                    sb.Append(" FROM golf.players p ");
                    sb.Append("left join golf.score sc on sc.playerid = p.playerid ");
                    sb.Append("left join golf.shots st on st.idscore = sc.idscore and st.holestatus in(1, 2, 0) ");
                    sb.Append("left join golf.rounds r on r.roundid = sc.roundid ");
                    sb.Append("left join golf.courseholes ch on ch.idcourseholes = st.holeid ");
                    sb.Append("left join golf.course c on c.courseid = sc.courseid  ");
                    sb.Append("Where  p.playerid <> -1 ");

                    if (!string.IsNullOrEmpty(appSettingsTournamentId))
                        sb.Append($" AND sc.Tournamentid = {appSettingsTournamentId} ");

                    sb.Append("group by p.playerid, p.firstname, p.lastname, p.TeamFullName, p.photopath, r.roundid, ch.HoleNumber , sc.back9start, st.HoleStatus ");


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
                            if (res["MatchId"] != null)
                            {
                                if (!string.IsNullOrWhiteSpace(res["MatchId"].ToString()))
                                {
                                    player.matchid = long.Parse(res["MatchId"].ToString());
                                }
                            }

                            if (res["MatchidIndex"] != null)
                            {
                                if (!string.IsNullOrWhiteSpace(res["MatchidIndex"].ToString()))
                                {
                                    player.matchidIndex = int.Parse(res["MatchidIndex"].ToString());
                                }
                            }





                            if (res["PhotoPath"] != null)
                                player.photopath = res["PhotoPath"].ToString();

                            if (res["Country"] != null)
                                player.country = res["Country"].ToString();



                            if (res["CourseShortDesc"] != null)
                                player.courseShortDesc = res["CourseShortDesc"].ToString();

                            if (res["courseId"] != null)
                                player.courseId = res["courseId"].ToString();






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
                                player.teamfullname = res["TeamFullName"].ToString();
                                resPlayers.Add(player.playerid, player);
                            }

                            if (holestatus == "2")
                            {
                                player.tournamentstrokes += strokes;
                                player.tournamentpar += par;
                            }


                            if (pointsFormat == EGolfPointsFormat.ModifiedStablefordAwardPoints)
                                player.tournamentscore = player.tournamentstrokes;
                            else
                                player.tournamentscore = player.tournamentstrokes - player.tournamentpar;

                            // Round


                            if (roundid != -1 && player.playerounds.ContainsKey(roundid))
                            {
                                player.roundsplayed++;
                                var round = player.playerounds[roundid];

                                round.roundstrokes += strokes;
                                round.roundpar += par;
                                round.played = true;

                                player.PlayedInTournament = true;


                                if (res["CourseColorCode"] != null)
                                    round.CourseColorCode = res["CourseColorCode"].ToString();


                                if (!string.IsNullOrWhiteSpace(player.courseShortDesc))
                                {
                                    var courseExists = goftTournament.courses.SingleOrDefault(x => string.Equals(x.ShortDesc.Trim(), player.courseShortDesc.Trim(), StringComparison.OrdinalIgnoreCase));
                                    if (courseExists == null)
                                    {
                                        player.courseIndexId = (goftTournament.courses.Count + 1).ToString();
                                        goftTournament.courses.Add(new GolfTournamentCourseDTO()
                                        {
                                            index = round.CourseColorCode,
                                            courseid = player.courseId,
                                            ShortDesc = player.courseShortDesc
                                        });
                                    }
                                    else
                                    {
                                        player.courseIndexId = courseExists.index;
                                    }
                                }



                                if (holestatus == "2")
                                {
                                    round.roundcompletedstrokes += strokes;
                                    round.roundcompletedpar += par;

                                    if (pointsFormat == EGolfPointsFormat.ModifiedStablefordAwardPoints)
                                        round.roundscore = round.roundcompletedstrokes;
                                    else
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

                                    if (pointsFormat == EGolfPointsFormat.ModifiedStablefordAwardPoints)
                                    {
                                        hole.holescore = hole.holestrokes;
                                    }
                                    else
                                    {
                                        if (hole.holestrokes > 0)
                                            hole.holescore = hole.holestrokes - hole.holepar;
                                    }

                                    hole.holestatus = holestatus;
                                    hole.backstart = backstart;
                                }

                                round.backstart = backstart;
                                round.totalholesplayed = round.holes.Count(x => x.Value.holestatus == "2");


                                var first9holesPlayedCount = 0;
                                for (int i = 1; i <= 9; i++)
                                {
                                    var hole = round.holes[i];
                                    if (hole.holestatus == "2")
                                    {
                                        first9holesPlayedCount++;
                                    }
                                }

                                var last9holesPlayedCount = 0;
                                for (int i = 10; i <= 18; i++)
                                {
                                    var hole = round.holes[i];
                                    if (hole.holestatus == "2")
                                        last9holesPlayedCount++;
                                }


                                if (first9holesPlayedCount == 9)
                                {
                                    round.first9done = true;
                                    var first9Strokes = round.holes[1].holestrokes + round.holes[2].holestrokes + round.holes[3].holestrokes
                                    + round.holes[4].holestrokes + round.holes[5].holestrokes + round.holes[6].holestrokes + round.holes[7].holestrokes
                                    + round.holes[8].holestrokes + round.holes[9].holestrokes;

                                    var first9Par = round.holes[1].holepar + round.holes[2].holepar + round.holes[3].holepar
                                    + round.holes[4].holepar + round.holes[5].holepar + round.holes[6].holepar + round.holes[7].holepar
                                    + round.holes[8].holepar + round.holes[9].holepar;


                                    if (pointsFormat == EGolfPointsFormat.ModifiedStablefordAwardPoints)
                                    {
                                        round.first9score = first9Strokes;
                                    }
                                    else round.first9score = first9Strokes - first9Par;

                                }
                                else
                                    round.first9done = false;

                                if (last9holesPlayedCount == 9)
                                {
                                    round.last9done = true;

                                    var last9Strokes = round.holes[10].holestrokes + round.holes[11].holestrokes + round.holes[12].holestrokes
                  + round.holes[13].holestrokes + round.holes[14].holestrokes + round.holes[15].holestrokes + round.holes[16].holestrokes
                  + round.holes[17].holestrokes + round.holes[18].holestrokes;

                                    var last9Par = round.holes[10].holepar + round.holes[11].holepar + round.holes[12].holepar
                                    + round.holes[13].holepar + round.holes[14].holepar + round.holes[15].holepar + round.holes[16].holepar
                                    + round.holes[17].holepar + round.holes[18].holepar;


                                    if (pointsFormat == EGolfPointsFormat.ModifiedStablefordAwardPoints)
                                    {
                                        round.last9score = last9Strokes;
                                    }
                                    else
                                        round.last9score = last9Strokes - last9Par;
                                }
                                else
                                    round.last9done = false;



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

                goftTournament.courses = goftTournament.courses.OrderBy(x => x.ShortDesc).ToList();
                //
                //var p = goftTournament.GolfPlayers.Where(x => string.Equals(x.firstname.Trim(), "Kim", StringComparison.OrdinalIgnoreCase)
                // || string.Equals(x.firstname.Trim(), "olivia", StringComparison.OrdinalIgnoreCase)

                //  || string.Equals(x.firstname.Trim(), "Nobuhle", StringComparison.OrdinalIgnoreCase)
                //    || string.Equals(x.firstname.Trim(), "Romy", StringComparison.OrdinalIgnoreCase)
                //).ToList();

                //goftTournament.GolfPlayers = p;

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
