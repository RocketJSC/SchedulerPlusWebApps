using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class AuditTable
    {
        public int AuditSeq { get; set; }
        public string TableName { get; set; }
        public string TranCode { get; set; }
        public string Key1 { get; set; }
        public string Key2 { get; set; }
        public string Key3 { get; set; }
        public string Key4 { get; set; }
        public string Key5 { get; set; }
    }
}
