using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class AttendanceDtl
    {
        public int AttendanceDtlId { get; set; }
        public int AttendanceHdrId { get; set; }
        public string Class { get; set; }
        public int PersonId { get; set; }
        public DateTime Time { get; set; }
        public string Present { get; set; }
        public string Note { get; set; }
        public DateTime? DateAdded { get; set; }
        public string DateLastActivity { get; set; }
        public string PagerNbr { get; set; }
        public string LabelNbr { get; set; }
        public string Visitor { get; set; }
    }
}
