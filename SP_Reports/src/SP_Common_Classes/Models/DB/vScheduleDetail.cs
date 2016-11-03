using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class vScheduleDetail
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
        public int ScheduleMasterId { get; set; }
        public string ScheduleMaster_Title { get; set; }
        public int SubEventId { get; set; }
        public DateTime Date { get; set; }
        public string SubEvent_Title { get; set; }
        public string Description { get; set; }
        public string Family_LastName { get; set; }
        public int ChildId { get; set; }
        public int EventId { get; set; }
        public string Class { get; set; }
        public string Event_Type { get; set; }
        public string ScheduleMaster_Description { get; set; }
        public int SeqNbr { get; set; }
    }
}

