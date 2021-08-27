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
    public partial class Payment : System.Web.UI.Page
    {
        string strQuery;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("~/Login.aspx");
            }
            
        }

        protected void rdoonine_CheckedChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void rdooffline_CheckedChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnpayonline_Click(object sender, EventArgs e)
        {
            String mainconn = ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ToString();
            
            SqlConnection cnn = new SqlConnection(mainconn);
            strQuery = "Insert Into PaymentMst(Email,Type,Bank_Name,CardNo,CCV,Amount) values(@Email,@Type,@Bank_Name,@CardNo,@CCV,@Amount)";
            cnn.Open();
            SqlCommand cmd = new SqlCommand(strQuery, cnn);
            cmd.Parameters.AddWithValue("@Email", Session["id"].ToString());
            cmd.Parameters.AddWithValue("@Type", "Online");
            cmd.Parameters.AddWithValue("@Bank_Name", drpbankname.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@CardNo", txtcard.Text);
            cmd.Parameters.AddWithValue("@CCV", Convert.ToInt32(txtcvv.Text));
            cmd.Parameters.AddWithValue("@Amount", Convert.ToDouble(lblamt.Text));
            
           
            cmd.ExecuteNonQuery();
            Response.Redirect("Thanks.aspx");
        }

        protected void btnpayoffline_Click(object sender, EventArgs e)
        {
            String mainconn = ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ToString();

            SqlConnection cnn = new SqlConnection(mainconn);
            strQuery = "Insert Into PaymentMst(Email,Type,Bank_Name,CardNo,CCV,Amount) values(@Email,@Type,@Bank_Name,@CardNo,@CCV,@Amount)";

            cnn.Open();
            SqlCommand cmd = new SqlCommand(strQuery, cnn);
            cmd.Parameters.AddWithValue("@Email", Session["id"].ToString());
            cmd.Parameters.AddWithValue("@Type", "Offline");
            cmd.Parameters.AddWithValue("@Bank_Name", drpbankname.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@CardNo", txtcard.Text);
            cmd.Parameters.AddWithValue("@CCV", Convert.ToInt32(txtcvv.Text));
            cmd.Parameters.AddWithValue("@Amount", Convert.ToDouble(lblamt.Text));

            cmd.ExecuteNonQuery();
            Response.Redirect("Thanks.aspx");
        }
    }
}