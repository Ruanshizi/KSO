using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using System.Collections;


namespace Thegraduationproject
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void BindGrid()
        {
            dgdShowData.Visible = false;
            dgdShowData.Visible = true;
            dgshowKSO.DataSource = BLL.LipstickBLL.GetLipstick();
            dgshowKSO.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindGrid();
            BindRepeater(0);
        }

        protected void BindRepeater(int index=0)
        {
            PagedDataSource pd = new PagedDataSource();
            pd.AllowPaging = true;
            pd.PageSize = 3;

            pd.DataSource = BLL.LipstickBLL.GetLipstick();
            if (index < 0)
                index = pd.PageCount - 1;

            if (index > pd.PageCount - 1)
                index = 0;


            pd.CurrentPageIndex = index;
            ViewState["Index"] = index;
            lblMsg.Text = (index + 1).ToString();
            lblCount.Text = (pd.PageCount).ToString();


            dgshowKSO.DataSource = pd;
            dgshowKSO.DataBind();
        }

        protected void dgdShowData_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void butNext_Click(object sender, EventArgs e)
        {
         
            //  int   a=    int.Parse(ViewState["Index"].ToString())-1;
            //ViewState["Index"] = a.ToString();
        }

        protected void butPre_Click(object sender, EventArgs e)
        {
            BindRepeater(int.Parse(ViewState["Index"].ToString())-1);
        }

        protected void butNext_Click1(object sender, EventArgs e)
        {
            BindRepeater(int.Parse(ViewState["Index"].ToString()) + 1);
        }
    }
}