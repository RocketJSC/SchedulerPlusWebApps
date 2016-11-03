using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SP_Common_Classes.Models.DB
{
    public class vAttendanceReport
    {
        //[Key]
        public int AttendanceDtlId { get; set; }
        public int AttendanceHdrId { get; set; }
        public DateTime DateAttended { get; set; }
        public DateTime TimeAttended { get; set; }
        public int PersonId { get; set; }
        public string CalcFirstName { get; set; }
        public string LastName { get; set; }
        public string Class { get; set; }
        public string ClassAttended { get; set; }
        [Phone]
        public string Parent1MobileNumber { get; set; }
        public int Parent1PersonId { get; set; }
        public string Parent1FirstName { get; set; }
        public string Parent1LastName { get; set; }
        [Phone]
        public string Parent2MobileNumber { get; set; }
        public int Parent2PersonId { get; set; }
        public string Parent2FirstName { get; set; }
        public string Parent2LastName { get; set; }
        public string Visitor { get; set; }
        public string FamilyPosition { get; set; }
        public string PaidStaff { get; set; }
        public string PersonVisitor { get; set; }
        public string Active { get; set; }
        public string PersonClass { get; set; }
        public int FamilyId { get; set; }
    }
}
