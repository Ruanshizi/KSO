using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Thegraduationproject
{
    /// <summary>
    /// SecurityCode 的摘要说明
    /// </summary>
    public class SecurityCode : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //    context.Response.ContentType = "text/plain";
            //    context.Response.Write("Hello World");
            DrawingSecurityCode sc = new DrawingSecurityCode();
            string SecurityCode = sc.GetSecurityCode(6);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}