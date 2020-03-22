using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Company.WebApplication1.Models
{
    [Table("SiteLogs")]
    public class SiteLogs
    {
        [Key]
        public int Id { get; set; }
        public int SiteId { get; set; }
        public int StatusCode { get; set; }
        public DateTime CreatedDate { get; set; }
    }
}
