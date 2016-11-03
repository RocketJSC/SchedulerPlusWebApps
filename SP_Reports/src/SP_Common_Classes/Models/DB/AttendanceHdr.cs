using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class AttendanceHdr
    {
        public int AttendanceHdrId { get; set; }
        public int EventId { get; set; }
        public DateTime Date { get; set; }
        public DateTime Time1 { get; set; }
        public DateTime Time2 { get; set; }
        public DateTime Time3 { get; set; }
        public DateTime Time4 { get; set; }
        public DateTime Time5 { get; set; }
        public DateTime? DateAdded { get; set; }
        public string DateLastActivity { get; set; }
        public int CoEventId1 { get; set; }
        public int CoEventId2 { get; set; }
        public int CoEventId3 { get; set; }
        public int CoEventId4 { get; set; }
        public int CoEventId5 { get; set; }
    }
}
