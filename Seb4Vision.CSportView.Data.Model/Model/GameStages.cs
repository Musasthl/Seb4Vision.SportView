using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
   public class GameStages
    {
        [Key]
        public long idGameStages { get; set; }
        public string Description { get; set; }
        public string ShortDescription { get; set; }
        public string GuiEvent { get; set; }
        public string GraphicsDescription { get; set; }
        public string GameType { get; set; }
        public int?  EventTimeLineToDisplay { get; set; }
    }
}
