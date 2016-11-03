using System;
using System.Collections.Generic;

namespace SP_Common_Classes.Models.DB
{
    public partial class OwRolePermission
    {
        public int RoleId { get; set; }
        public int ActivityId { get; set; }
        public string Privilege { get; set; }
    }
}
