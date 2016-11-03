using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class PersonFamilyAvail
    {
        public int PersonFamilyAvailId { get; set; }
        public int PersonId { get; set; }
        public int FamilyId { get; set; }
        public int ScheduleTemplateId { get; set; }
        public string Available { get; set; }
        public DateTime? DateAdded { get; set; }
        public DateTime? DateLastActivity { get; set; }
    }
}
