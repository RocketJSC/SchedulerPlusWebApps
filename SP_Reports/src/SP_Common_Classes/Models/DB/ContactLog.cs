using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class ContactLog
    {
        public int ContactLogId { get; set; }
        public DateTime WhenSent { get; set; }
        public string Type { get; set; }
        public string Origin { get; set; }
        public int PersonId { get; set; }
        public string Address { get; set; }
        public string SubjectHeader { get; set; }
        public string Text { get; set; }
        public DateTime? DateAdded { get; set; }
        public string DateLastActivity { get; set; }
    }
}
