using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Seb4Vision.CSportView.Data.Model.Model
{
    public class PersonType
    {
        [Key]
        public int PersonTypeId { get; set; }
        public string Description { get; set; }
        public string ShortDescription { get; set; }

    }
}
