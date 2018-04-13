using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thegraduationproject
{
    public partial class Lipstick : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ShowKSO();

        }

        protected void ShowKSO()
        {
            Model.Lipstick kso = BLL.LipstickBLL.GetLipstick()[0];

            if (kso != null)
            {
                imgCover.ImageUrl = "/public/img/img" + kso.Lphoto + ".jpg";
                lblames.Text = kso.LTitle;
                lblpice.Text =string.Format("{0:c}",kso.LPrice);
                lblLColor.Text = kso.LColor;

            }

        }
    }
}