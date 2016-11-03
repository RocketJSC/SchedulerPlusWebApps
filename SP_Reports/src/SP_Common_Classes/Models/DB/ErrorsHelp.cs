using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class ErrorsHelp
    {
        public string ErrorSource { get; set; }
        public int ErrorLevel { get; set; }
        public int ErrorCode { get; set; }
        public int? HelpId { get; set; }
        public string HelpFile { get; set; }
        public string MoreInfo { get; set; }
        public int? LiteralId { get; set; }
    }
}
