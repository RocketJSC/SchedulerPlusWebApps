using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class AuditTransaction
    {
        public int AuditSeq { get; set; }
        public string UserId { get; set; }
        public string SystemUser { get; set; }
        public DateTime ActivityDate { get; set; }
    }
}
