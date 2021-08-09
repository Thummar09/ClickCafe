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
            /* if (Page.IsPostBack == false)
             {
                if(Session["buyitems"] == null)
                 {
                     btnchckout.Enabled = false;
                 }
                 else
                 {
                     btnchckout.Enabled = true;
                 }
             }
             Session["addproduct"] = false;
             DataTable dt = new DataTable();
             DataRow dr;
             dt.Columns.Add("Picture");
             dt.Columns.Add("PName");
             dt.Columns.Add("Price");
             dt.Columns.Add("Qnt");
             dt.Columns.Add("TotalPrice");

             if(Request.QueryString["id"]!=null)
             {
                 if(Session["Buyitems"]==null)
                 {
                     dr = dt.NewRow();
                     SqlDataAdapter da = new SqlDataAdapter("Select * from ProductMst Where OID="+Request.QueryString["id"],cnn);
                     DataSet ds = new DataSet();
                     da.Fill(ds);

                 }
             }*/

            if (Page.IsPostBack == false)
            {
                SqlConnection cnn = new SqlConnection();
                SqlCommand cmd = new SqlCommand("ORDERMST_SELECT_email-and_status", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                
                cmd.Parameters.AddWithValue("@email", Session["id"].ToString());
                cmd.Parameters.AddWithValue("@status",0);
               
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
            int oidd = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
            SqlConnection cnn = new SqlConnection();
            
            SqlCommand cmd = new SqlCommand("Delete * from OrderMst Where OID="+oidd, cnn);
            
            DataTable dt = new DataTable();
            

            GridView2.DataSource = dt;
            GridView2.DataBind();
            lbl.Text = GridView2.Rows.Count.ToString();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int oidd = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
            TextBox txtqq = GridView2.Rows[e.RowIndex].Cells[3].FindControl("txtq") as TextBox;

            string pricee = GridView2.Rows[e.RowIndex].Cells[2].Text;
            double tpricee = Convert.ToInt32(pricee) * Convert.ToInt32(txtqq.Text);

        }
    }
}