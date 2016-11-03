using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class ScheduleMaster
    {
        public int ScheduleMasterId { get; set; }
        public int EventId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Active { get; set; }
        public int MaxTimesScheduled { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Periodicity { get; set; }
        public string PeriodSunday { get; set; }
        public string PeriodMonday { get; set; }
        public string PeriodTuesday { get; set; }
        public string PeriodWednesday { get; set; }
        public string PeriodThursday { get; set; }
        public string PeriodFriday { get; set; }
        public string PeriodSaturday { get; set; }
        public DateTime? DateAdded { get; set; }
        public string DateLastActivity { get; set; }
        public string Class1 { get; set; }
        public string Class2 { get; set; }
        public string Class3 { get; set; }
        public string Class4 { get; set; }
        public string Class5 { get; set; }
        public string Class6 { get; set; }
        public string FamilyPosition1 { get; set; }
        public string FamilyPosition2 { get; set; }
        public string FamilyPosition3 { get; set; }
        public string FamilyPosition4 { get; set; }
        public string FamilyPosition5 { get; set; }
        public string FamilyPosition6 { get; set; }
        public string PaidStaff { get; set; }
        public string Etype { get; set; }
    }
}
