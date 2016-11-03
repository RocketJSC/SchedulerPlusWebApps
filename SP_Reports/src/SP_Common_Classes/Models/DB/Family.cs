using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class Family
    {
        public int FamilyId { get; set; }
        public string LastName { get; set; }
        public string ScheduleTogether { get; set; }
        public string Active { get; set; }
        public DateTime? DateAdded { get; set; }
        public string DateLastActivity { get; set; }
        public string Note1 { get; set; }
        public string Schedule { get; set; }
        public string SpecialHandling { get; set; }
        public string SpecialHandlingNote { get; set; }
        public string Visitor { get; set; }
    }
}
