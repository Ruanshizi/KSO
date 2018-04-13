using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thegraduationproject
{
    public partial class indexTxt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUoload_Click(object sender, EventArgs e)
        {
            //判断客户端是否选择了文件
            if (FileUploadl.HasFile)
            {
                try
                {
                    //获取上传文件名称和类型
                    string path = FileUploadl.PostedFile.FileName;
                    string type = path.Substring(path.LastIndexOf("."));
                    //生成新的文件名称
                    string name = DateTime.Now.ToFileTime() + type;

                    //将文件保存到服务器
                    FileUploadl.SaveAs("E:/二学年/个人毕业项目/Thegraduationproject/Thegraduationproject/public/" + name);

                    //显示上传文件信息
                    lblMsg.Text = "文件名：" + path + "<br/>";
                    lblMsg.Text += "文件大小：" + FileUploadl.PostedFile.ContentLength + "<br/>";
                    lblMsg.Text += "文件类型：" + FileUploadl.PostedFile.ContentType + "<br/>";
                    lblMsg.Text += "上传文件名称：" + name;
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "异常：" + ex.Message;
                }
            }
            else
                lblMsg.Text = "请选择一个文件";
        }
    }
}