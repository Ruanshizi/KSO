using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Thegraduationproject
{
    /// <summary>
    /// Login1 的摘要说明
    /// </summary>
    public class Login1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");


            string name = context.Request["user"].ToLower();
            string pwd = context.Request["password"].ToLower();
            Model.Kseouser kseouser = BLL.KseouserBLL.GetKseouser()[0];
            if (kseouser.State!=0)
                context.Response.Write(kseouser.LoginName);
            else
            {
                context.Response.Write("Homepage.html");

            }
            context.Response.End();
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