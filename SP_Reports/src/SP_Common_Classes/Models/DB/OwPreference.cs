using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class OwPreference
    {
        public string UserId { get; set; }
        public int PrefId { get; set; }
        public string PrefValue { get; set; }
    }
}
