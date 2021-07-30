using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClickCafe
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null || Session["role"].ToString() != "2")
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}