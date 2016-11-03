using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class EventFamilyPerson
    {
        public int EventFamilyPersonId { get; set; }
        public int EventId { get; set; }
        public int FamilyId { get; set; }
        public int PersonId { get; set; }
        public string Schedule { get; set; }
        public DateTime? DateAdded { get; set; }
        public string DateLastActivity { get; set; }
    }
}
