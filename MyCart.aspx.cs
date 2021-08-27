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
    public partial class MyCart : System.Web.UI.Page
    {
        
        SqlCommand cmd = new SqlCommand();
        SqlConnection cnn = new SqlConnection();
        DataTable dt = new DataTable();
        private string Qnt = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

            cnn.ConnectionString = ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ConnectionString;

            cmd = new SqlCommand();
            cmd.Connection = cnn;

            if (Session["id"] == null)
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("~/Login.aspx");
            }
            int Qnt = 0;
            int grandtotal = 0;
            int rowTotal = 0;
            int Price = 0;
            int Total = 0;
            foreach (GridViewRow row in g1.Rows)
                
            {
                Qnt = Convert.ToInt32(row.Cells[4].Text);
                Price = Convert.ToInt32(row.Cells[3].Text);
                rowTotal = Qnt * Price;
                grandtotal += rowTotal;
                
            }
            Total = grandtotal;
            lblgt.Text = "Grand Total : ₹ "+ Convert.ToString(Total);
            lblc.Text = g1.Rows.Count.ToString();
            lblgt.Text = Request["lblamt"];
        }
        

        protected void g1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnco_Click(object sender, EventArgs e)
        {
            
        }

        protected void g1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName == "Update")
            {
                GridViewRow gvrow = (GridViewRow)((ImageButton)e.CommandSource).NamingContainer;
                TextBox txtQnt = (TextBox)gvrow.FindControl("txtQnt");
                TextBox txttotal = (TextBox)gvrow.FindControl("txttotal");

                SqlDataSource2.UpdateParameters["Qnt"].DefaultValue = txtQnt.Text;
                SqlDataSource2.UpdateParameters["Total"].DefaultValue = txttotal.Text;
                SqlDataSource2.Update();
            }
            if (e.CommandName == "Delete")
            {
                GridViewRow gvdeleterow = (GridViewRow)((ImageButton)e.CommandSource).NamingContainer;
                Label CID  = (Label)gvdeleterow.FindControl("CID");
            }
            
        }
    }
}