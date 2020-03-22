using Company.WebApplication1.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Company.WebApplication1.Models;
using Company.WebApplication1.Extensions;
using Microsoft.Extensions.Configuration;
using Company.WebApplication1.Services.Mail;

namespace Company.WebApplication1.Services.Operation
{
    public class WebSitesControl : IWebSitesControl
    {
        private readonly IServiceProvider _serviceProvider;
        public WebSitesControl(
            IServiceProvider applicationDbContext)
        {
            _serviceProvider = applicationDbContext;
        }
        public void SitesControl()
        {
            var _db = _serviceProvider.GetService<ApplicationDbContext>();
            var configuration = _serviceProvider.GetService<IConfiguration>();
            var mailManager = _serviceProvider.GetService<IMailManager>();
            foreach (var item in _db.WebSites.Where(x => x.Status == true).ToList())
            {
                TimeSpan diff = DateTime.Now - item.UpdatedDate;
                if (item.Minute <= diff.TotalMinutes)
                {
                    SiteLogs siteLogs = new SiteLogs();
                    siteLogs.SiteId = item.Id;
                    siteLogs.StatusCode = OperationExtensions.GetSiteStatus(item.SiteUrl);
                    siteLogs.CreatedDate = DateTime.Now;
                    _db.WebSiteLogs.Add(siteLogs);
                    _db.SaveChanges();
                    var updated = _db.WebSites.Where(x => x.Id == item.Id).FirstOrDefault();
                    updated.UpdatedDate = DateTime.Now;
                    _db.SaveChanges();
                    if (siteLogs.StatusCode != 200)
                    {
                        mailManager.SendEmailAsync(configuration.GetSection("Email:EmailErrorStatus").Value, (updated.SiteName + " Site has a problem - " + DateTime.Now), (updated.SiteName + " Site has a problem!Web Site Status Code=" + siteLogs.StatusCode));
                    }
                }
            }
        }

    }
}
