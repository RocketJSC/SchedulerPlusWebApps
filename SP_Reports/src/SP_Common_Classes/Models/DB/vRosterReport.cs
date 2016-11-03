using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SP_Common_Classes.Models.DB
{
    public class vRosterReport
    {
        public int PersonId { get; set; }
        public string CalcFirstName { get; set; }
        public string LastName { get; set; }
        public string PersonClass { get; set; }
        public string ClassAttended { get; set; }
        public int Parent1PersonId { get; set; }
        public string Parent1FirstName { get; set; }
        public string Parent1LastName { get; set; }
        [Phone]
        public string Parent1MobileNumber { get; set; }
        public int Parent2PersonId { get; set; }
        public string Parent2FirstName { get; set; }
        public string Parent2LastName { get; set; }
        [Phone]
        public string Parent2MobileNumber { get; set; }
        public string FamilyPosition { get; set; }
        public string PaidStaff { get; set; }
        public string Visitor { get; set; }
        public string Active { get; set; }
        public string RosterReview { get; set; }
        public string RosterNotes { get; set; }
        public string PottyTraining { get; set; }
        public string Note1 { get; set; }
        public string Note2 { get; set; }
        public DateTime BirthDate { get; set; }
        public string Family_Note1 { get; set; }
        public string SpecialHandling { get; set; }
        public string SpecialHandlingNote { get; set; }
    }
}