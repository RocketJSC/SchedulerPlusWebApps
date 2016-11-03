using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class OwElementSecurity
    {
        public int ObjectId { get; set; }
        public int ElementId { get; set; }
        public int RoleId { get; set; }
        public string Privilege { get; set; }
    }
}
