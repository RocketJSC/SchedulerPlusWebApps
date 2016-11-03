using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class ImportDtl
    {
        public int ImportDtlId { get; set; }
        public int ImportHdrId { get; set; }
        public string SpcolumnName { get; set; }
        public string ImportColumnName { get; set; }
        public DateTime? DateAdded { get; set; }
        public string DateLastActivity { get; set; }
    }
}
