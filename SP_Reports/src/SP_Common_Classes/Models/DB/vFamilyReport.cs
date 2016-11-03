using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SP_Common_Classes.Models.DB
{
    public class vFamilyReport
    {
        public int FamilyId { get; set; }
        public string LastName { get; set; }
        public string Active { get; set; }
        public string Visitor { get; set; }
        public int Parent1_PersonId { get; set; }
        public string Parent1_CalcFirstName { get; set; }
        public string Parent1_PaidStaff { get; set; }
        public int Parent2_PersonId { get; set; }
        public string Parent2_CalcFirstName { get; set; }
        public string Parent2_PaidStaff { get; set; }
        public string Note1 { get; set; }
        public string SpecialHandlingNote { get; set; }
    }
}
