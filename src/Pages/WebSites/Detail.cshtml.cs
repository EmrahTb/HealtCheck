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
    public class DetailModel : PageModel
    {
        private readonly ApplicationDbContext _db;

        [BindProperty]
        public Sites Sites { get; set; }
        public DetailModel(
            ApplicationDbContext applicationDbContext)
        {
            _db = applicationDbContext;
        }

        public void OnGet(int? id)
        {
            if (id != null)
            {
                Sites = _db.WebSites.Where(x => x.Id == id).FirstOrDefault();
            }
            else
            {
                Sites = new Sites();
                Sites.Status = true;
                Sites.Minute = 1;
            }

        }
        public async Task<IActionResult> OnPostAsync(Sites sites)
        {
            if (ModelState.IsValid)
            {
                if (sites.Id == 0)
                {
                    Sites site = new Sites();
                    site.SiteName = sites.SiteName;
                    site.SiteUrl = sites.SiteUrl;
                    site.Status = sites.Status;
                    site.Minute = sites.Minute;
                    site.UpdatedDate = DateTime.Now;
                    _db.WebSites.Add(site);
                    _db.SaveChanges();
                    TempData["StatusMessage"] = "Web Site Added Successfly";
                }
                else
                {
                    var site = _db.WebSites.Where(x => x.Id == sites.Id).FirstOrDefault();
                    site.SiteName = sites.SiteName;
                    site.SiteUrl = sites.SiteUrl;
                    site.Status = sites.Status;
                    site.Minute = sites.Minute;
                    _db.SaveChanges();
                    TempData["StatusMessage"] = "Web Site Edited Successfly";
                }

            }
            return RedirectToPage("/WebSites/List");
        }

    }
}