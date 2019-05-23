using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Seb4Vision.CSportView.Data;
using Seb4Vision.CSportView.Data.Model.DataTransferObject;
using Seb4Vision.CSportView.Data.Model.Model;
using Seb4Vision.CSportView.Data.Repository;

namespace Seb4Vision.CSportView.Web.Controllers
{
    [Route("api/[controller]")]
    [Produces("application/json")]
    public class TournamentMatchController : Controller
    {
        private readonly Seb4VisionCSportViewContext _context;
        private readonly ITournamentMatchRepository _TournamentMatchRepository;
        public TournamentMatchController(Seb4VisionCSportViewContext context)
        {
            _context = context;
            _TournamentMatchRepository = new TournamentMatchRepository();
        }

        [HttpGet]
        [Route("GetAllNetball")]
        [Produces(typeof(List<TournamentMatch>))]
        public ActionResult GetAllNetballs()
        {
            try
            {
                List<TournamentMatch> list = _TournamentMatchRepository.GetAllNetBallTournamentMatches(_context);
                if (list == null)
                    return NotFound();
                return Ok(list);
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }


        [HttpGet]
        [Route("GetAllNetBallQuarterScore")]
        [Produces(typeof(NetBallMatchQuaterScore))]
        public ActionResult GetAllNetBallQuarterScore(long matchId)
        {
            try
            {
                var netBallMatchQuaterScore = _TournamentMatchRepository.GetAllNetBallQuarterScore(_context, matchId);
                if (netBallMatchQuaterScore == null)
                    return NotFound();
                return Ok(netBallMatchQuaterScore);
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }

    }
}
