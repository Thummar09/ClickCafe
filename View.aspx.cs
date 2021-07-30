using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ClickCafe
{
    public partial class View : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection cnn;
        string id;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strQuery;
            cnn = new SqlConnection();
            cnn.ConnectionString = ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ConnectionString;
            if(Request.QueryString["id"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            string id = Request.QueryString["id"].ToString();
            strQuery = "SELECT * from ProductMst Where PID="+ id ;
            
            cnn.Open();
            cmd = new SqlCommand(strQuery, cnn);
           
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            da.Fill(dt);
            lblname.Text = dt.Rows[0]["PName"].ToString();
            lblprice.Text = dt.Rows[0]["Price"].ToString();
            lbldetail.Text = dt.Rows[0]["Detail"].ToString();
            lblcate.Text = dt.Rows[0]["Cname"].ToString();
            Image1.ImageUrl = dt.Rows[0]["Picture"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}