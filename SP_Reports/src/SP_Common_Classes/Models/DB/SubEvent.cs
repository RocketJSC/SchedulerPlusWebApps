using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class SubEvent
    {
        public int SubEventId { get; set; }
        public int ParentId { get; set; }
        public int ChildId { get; set; }
    }
}
