using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SP_Common_Classes.Models.DB
{
    public class vLastAttendedReport
    {
        public int AttendanceDtlId { get; set; }
        public int AttendanceHdrId { get; set; }
        public string AttendanceClass { get; set; }
        public string ClassAttended { get; set; }
        public DateTime DateAttended { get; set; }
        public int PersonId { get; set; }
        public string Note { get; set; }
        public string Visitor { get; set; }
        public string Person_LastName { get; set; }
        public string CalcFirstName { get; set; }
        public string FamilyPosition { get; set; }
        public string Person_Class { get; set; }
        public string Person_Visitor { get; set; }
        public string Person_Active { get; set; }
        public string Person_PaidStaff { get; set; }
    }
}
