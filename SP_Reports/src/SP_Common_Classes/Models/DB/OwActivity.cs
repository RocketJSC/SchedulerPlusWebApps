using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class OwActivity
    {
        public int ActivityId { get; set; }
        public string ActivityName { get; set; }
        public string DefaultPriviledge { get; set; }
    }
}
