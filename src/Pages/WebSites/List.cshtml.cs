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
    public class ListModel : PageModel
    {
        private readonly ApplicationDbContext _db;

        [BindProperty]
        public List<Sites> Sites { get; set; }
        public ListModel(
            ApplicationDbContext applicationDbContext)
        {
            _db = applicationDbContext;
        }

        public void OnGet(int? id,string delete)
        {
            if (id != null)
            {
                var deleted = _db.WebSites.Where(x => x.Id == id).FirstOrDefault();

                _db.WebSites.Remove(deleted);
                _db.SaveChanges();
                RedirectToPage("/WebSites/List");
            }
            if (delete == "ok")
            {
                TempData["StatusMessage"] = " Web Site  Deleted!";
            }
            Sites = _db.WebSites.ToList();
        }
    }
}