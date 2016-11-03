using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SP_Common_Classes.Models.DB
{
    public class Value
    {
        public int Language_Id { get; set; }
        public int DomainId { get; set; }
        public string Code_Value { get; set; }
        public string Code_Label { get; set; }
    }
}
