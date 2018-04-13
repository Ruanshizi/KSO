using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
namespace Thegraduationproject
{
    /// <summary>
    /// MyHandler 的摘要说明
    /// </summary>
    public class MyHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //    context.Response.ContentType = "text/plain";
            //    context.Response.Write("Hello World");

            context.Request.ContentType = "Image/jpg";
            //获取图书号
            string isbn = context.Request.QueryString["ISBN"];
            //获取物理路径
            string path = context.Server.MapPath("~/Public/img/img/" + isbn + ".jpg");
            //加载图片
            Image img = Image.FromFile(path);
            //创建布画
            Graphics g = Graphics.FromImage(img);
            //创建绘制水印的工具
            SolidBrush sb = new SolidBrush(Color.Black);
            //创建字体对象
            Font f = new Font("宋体", 22);
            //绘制水印
            g.DrawString("KSO", f, sb, 0, 0);
            //保存
            img.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
            //结束输出
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