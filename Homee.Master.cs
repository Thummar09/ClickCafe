using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClickCafe
{
    public partial class Homee : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FName"] != null)
            {
                string strUser = Session["FName"].ToString() + " " + Session["LName"].ToString();
              
                // lblUsr.Text = "Welcome" + strUser;
                //lblUsr.Visible = true;
            }
            else
            { 
               // lblUsr.Visible = false;
            }
        }

    }
}
