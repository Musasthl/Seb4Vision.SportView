using System;
using System.Collections.Generic;
using System.Text;
using Seb4Vision.CSportView.Data.Model.Model;

namespace Seb4Vision.CSportView.Data.Repository
{
    public interface ITournamentMatchRepository
    {
        List<TournamentMatch> GetAllNetBallTournamentMatches(Seb4VisionCSportViewContext context);
        NetBallMatchQuaterScore GetAllNetBallQuarterScore(Seb4VisionCSportViewContext context, long matchId);
    }
}
