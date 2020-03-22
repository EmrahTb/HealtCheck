using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Company.WebApplication1.Models
{
    [Table("Sites")]
    public class Sites
    {
        [Key]
        public int Id { get; set; }
        public string SiteName { get; set; }
        public string SiteUrl { get; set; }
        public int Minute { get; set; }
        public bool Status { get; set; }
        public DateTime UpdatedDate { get; set; }
    }
}
