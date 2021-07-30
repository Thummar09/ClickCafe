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
        protected void Page_Load(object sender, EventArgs e)
        {
            cnn.ConnectionString = ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ConnectionString;
            cnn.Open();

            if (Session["id"] == null)
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("~/Login.aspx");
            }
            if (Page.IsPostBack == false)
            {
                DataTable dt = new DataTable();
                GridView2.DataSource = dt;
                GridView2.DataBind();
                lbl.Text = GridView2.Rows.Count.ToString();
                if (GridView2.Rows.Count == 0)
                {

                    btnchckout.Visible = false;
                    Button1.Visible = false;
                }
                else
                {
                    btnchckout.Visible = true;
                    Button1.Visible = true;


                }
            }
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }
    }
}