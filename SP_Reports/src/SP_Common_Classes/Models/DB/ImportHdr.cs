using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class ImportHdr
    {
        public int ImportHdrId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string TableName { get; set; }
        public string FileExtensions { get; set; }
        public DateTime? DateAdded { get; set; }
        public string DateLastActivity { get; set; }
    }
}
