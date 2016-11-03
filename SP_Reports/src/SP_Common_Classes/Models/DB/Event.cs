using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class Event
    {
        public int EventId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Active { get; set; }
        public int Slots { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime StopTime { get; set; }
        public DateTime? DateAdded { get; set; }
        public string DateLastActivity { get; set; }
        public string TopLevel { get; set; }
        public int SeqNbr { get; set; }
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
        public string Class { get; set; }
        public string PaidStaff { get; set; }
        public string Etype { get; set; }
    }
}
