using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Company.WebApplication1.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Company.WebApplication1.Pages
{
    public class IndexModel : PageModel
    {
        [BindProperty]
        public int SiteCount { get; set; }
        [BindProperty]
        public int Successfull { get; set; }
        [BindProperty]
        public int Unsuccessful { get; set; }
        private readonly ApplicationDbContext _db;
        public IndexModel(
            ApplicationDbContext applicationDbContext)
        {
            _db = applicationDbContext;
        }
        public void OnGet()
        {
            SiteCount = _db.WebSites.ToList().Count;
            Successfull = _db.WebSiteLogs.Where(x=> x.StatusCode == 200).ToList().Count;
            Unsuccessful = _db.WebSiteLogs.Where(x=> x.StatusCode != 200).ToList().Count;
        }
    }
}
