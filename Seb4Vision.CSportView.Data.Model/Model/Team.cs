using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class Teams
    { 
        [Key]
        public long IdTeams { get; set; }
        public int TeamType { get; set; }
        public string TeamName { get; set; }
        public string ShortName { get; set; }
        public string AbbreviatedName { get; set; }
        public string TeamsColour { get; set; }
        public int Formation { get; set; }
        public int StartPlayDirection { get; set; }
        public string AggregateScore { get; set; }
        public int DockedPoints { get; set; }
        public double MainColor { get; set; }
        public double MainTextColor { get; set; }
        public double HoverColor { get; set; }
        public double HoverTextColor { get; set; }
        public double SelectedColor { get; set; }
        public double SecondarySelectedColor { get; set; }
        public double SelectedTextColor { get; set; }
        public double PlayerMainColor { get; set; }
        public double PlayerMainTextColor { get; set; }
        public double PlayerHoverColor { get; set; }
        public double PlayerHoverTextColor { get; set; }
        public double PlayerSelectedColor { get; set; }
        public double PlayerSecondarySelectedColor { get; set; }
        public double PlayerSelectedTextColor { get; set; }
        public double OfficialMainColor { get; set; }
        public double OfficialTextColor { get; set; }
        public double OfficialHoverColor { get; set; }
        public double OfficialHoverTextColor { get; set; }
        public double OfficialSelectedColor { get; set; }
        public double OfficialSecondarySelectedColor { get; set; }
        public double OfficialSelectedTextColor { get; set; }
        public string PlayerLogo1 { get; set; }
        public string PlayerLogo2 { get; set; }
        public string PlayerLogo3 { get; set; }
        public string TeamLogo1 { get; set; }
        public string TeamLogo2 { get; set; }
        public string TeamLogo3 { get; set; }
        public string ExtraDescription { get; set; }
        public int GroupID { get; set; }

    }
}
