using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class CommFormat2
    {
        public int ScheduleMasterId { get; set; }
        public int FamilyId { get; set; }
        public int PersonId { get; set; }
        public DateTime Date { get; set; }
    }
}
