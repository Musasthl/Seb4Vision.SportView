using Seb4Vision.CSportView.Web.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Seb4Vision.CSportView.Web.Helpers
{
    public class GolfGamePointsFormatHelper
    {
        internal static EGolfPointsFormat GetPointsFormat(string value)
        {
            try
            {
                if (!String.IsNullOrWhiteSpace(value))
                {
                    EGolfPointsFormat pointsFormat;
                    if (Enum.TryParse(value, out pointsFormat))
                        if (Enum.IsDefined(typeof(EGolfPointsFormat), pointsFormat) | pointsFormat.ToString().Contains(","))
                            return pointsFormat;
                }

                return EGolfPointsFormat.StandardPoints;
            }
            catch (Exception ex)
            {
                return EGolfPointsFormat.StandardPoints;
            }
        }
    }
}
