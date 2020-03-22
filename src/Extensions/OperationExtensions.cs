using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace Company.WebApplication1.Extensions
{
    public static class OperationExtensions
    {
        public static int GetSiteStatus(string url)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            request.Method = "GET";
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            return Convert.ToInt32(response.StatusCode);
        }
    }
}
