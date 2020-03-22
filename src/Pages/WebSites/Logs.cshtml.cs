using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Company.WebApplication1.Data;
using Company.WebApplication1.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Company.WebApplication1
{
    public class LogsModel : PageModel
    {
        private readonly ApplicationDbContext _db;

        [BindProperty]
        public List<SiteLogs> SiteLogs { get; set; }
        public LogsModel(
            ApplicationDbContext applicationDbContext)
        {
            _db = applicationDbContext;
        }
        public void OnGet(int? id, string delete)
        {
            if (id != null)
            {
                var deleted = _db.WebSiteLogs.Where(x => x.Id == id).FirstOrDefault();
                _db.WebSiteLogs.Remove(deleted);
                _db.SaveChanges();
                RedirectToPage("/WebSites/List");
            }
            if (delete == "ok")
            {
                TempData["StatusMessage"] = " Web Site Log Deleted!";
            }
            SiteLogs = _db.WebSiteLogs.Where(x=> x.StatusCode == 200).OrderByDescending(x => x.Id).ToList();
            var aa = 1;

        }
        public string WebSiteName(int id)
        {
            return _db.WebSites.Where(x => x.Id == id).FirstOrDefault().SiteName;
        }
    }
}