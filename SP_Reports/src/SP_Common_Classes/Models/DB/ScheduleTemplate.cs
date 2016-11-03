using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class ScheduleTemplate
    {
        public int ScheduleTemplateId { get; set; }
        public int ScheduleMasterId { get; set; }
        public int SubEventId { get; set; }
        public DateTime Date { get; set; }
        public int Slots { get; set; }
        public int SlotsTaken { get; set; }
        public string Frozen { get; set; }
        public DateTime? DateAdded { get; set; }
        public string DateLastActivity { get; set; }
    }
}
