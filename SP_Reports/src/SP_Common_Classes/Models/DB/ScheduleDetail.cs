using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class ScheduleDetail
    {
        public int ScheduleDetailId { get; set; }
        public int ScheduleTemplateiD { get; set; }
        public int FamilyId { get; set; }
        public int PersonId { get; set; }
        public DateTime? DateAdded { get; set; }
        public DateTime? DateLastActivity { get; set; }
        public string Icsdata { get; set; }
        public string Swapped { get; set; }
        public string Etype { get; set; }
    }
}
