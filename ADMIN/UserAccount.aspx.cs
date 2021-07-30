using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ClickCafe.ADMIN
{
    public partial class UserAccount : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            cnn.Open();
            string StrQuery = "SELECT * FROM UserMst" ;
            SqlCommand cmd = new SqlCommand(StrQuery, cnn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (Page.IsPostBack == false)
            {
               
                GridView2.DataSource = dt;
                GridView2.DataBind();
                lbl.Text = GridView2.Rows.Count.ToString();
               
            }
        }
    }
    
}