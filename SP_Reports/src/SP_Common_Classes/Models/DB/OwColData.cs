using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class OwColData
    {
        public string UserId { get; set; }
        public int SprdId { get; set; }
        public string ColWidth { get; set; }
        public short UrememberOpt { get; set; }
        public short UcustSortOpt { get; set; }
        public string UcustSort { get; set; }
        public int FrozenCol { get; set; }
    }
}
