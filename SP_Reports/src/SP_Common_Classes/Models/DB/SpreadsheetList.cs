using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class SpreadsheetList
    {
        public int SprdId { get; set; }
        public string SheetId { get; set; }
        public string SprdDesc { get; set; }
        public DateTime DateLastActivity { get; set; }
        public string CustomizedInd { get; set; }
    }
}
