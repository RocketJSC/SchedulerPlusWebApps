using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class ErrorsText
    {
        public int LanguageId { get; set; }
        public int LiteralId { get; set; }
        public string ErrorText { get; set; }
    }
}
