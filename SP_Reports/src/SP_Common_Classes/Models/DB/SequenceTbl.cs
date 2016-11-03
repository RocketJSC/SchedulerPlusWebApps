using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class SequenceTbl
    {
        public string SqlTable { get; set; }
        public int LastUsedId { get; set; }
    }
}
