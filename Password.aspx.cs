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
    public partial class Password : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            lbl.Text = "";
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from UserMst where password='" + txtcurpass.Text + "'", cnn);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);

            if (DT.Rows.Count == 0)
            {
                lbl.Text = "Invalid current password";
                lbl.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                SQLAdapter = new SqlDataAdapter("update usermst set password='" + txtnewpass.Text + "' where email='" + Session["email"].ToString() + "'", cnn);
                SQLAdapter.Fill(DT);
                lbl.Text = "Password changed successfully";
                lbl.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
}