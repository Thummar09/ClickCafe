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
    public partial class Product : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection cnn;
        string strQuery;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if(Session["id"]!=null)
            { 
            this.MasterPageFile = "~/Homee.master";
            }
            else
            {
                this.MasterPageFile = "~/Site.master";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
 
            cnn = new SqlConnection();
            cnn.ConnectionString = ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ConnectionString;
            cnn.Open();
            cmd = new SqlCommand();
            string strQuery;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            if(Request.QueryString["id"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            if (Page.IsPostBack == false)
            {
                string idd = Request.QueryString["id"].ToString();
                if (idd == "1")
                {
                    strQuery = "Select * FROM ProductMst WHERE Cname='ITALIAN'";
                    
                    SqlCommand cmd = new SqlCommand(strQuery, cnn);
                   
                    
                    DataList1.DataSource = cmd.ExecuteReader(); ;
                    DataList1.DataBind();
                }
                else if (idd == "2")
                {
                    strQuery = "Select * FROM ProductMst WHERE Cname='MAXICAN'";

                    SqlCommand cmd = new SqlCommand(strQuery, cnn);


                    DataList1.DataSource = cmd.ExecuteReader(); ;
                    DataList1.DataBind();
                }
                else if (idd == "3")
                {
                    strQuery = "Select * FROM ProductMst WHERE Cname='STARTERS'";

                    SqlCommand cmd = new SqlCommand(strQuery, cnn);


                    DataList1.DataSource = cmd.ExecuteReader(); ;
                    DataList1.DataBind();
                }
                else if (idd == "4")
                {
                    strQuery = "Select * FROM ProductMst WHERE Cname='INDIAN'";

                    SqlCommand cmd = new SqlCommand(strQuery, cnn);


                    DataList1.DataSource = cmd.ExecuteReader(); ;
                    DataList1.DataBind();
                }
                else if (idd == "5")
                {
                    strQuery = "Select * FROM ProductMst WHERE Cname='LEBANESE'";

                    SqlCommand cmd = new SqlCommand(strQuery, cnn);


                    DataList1.DataSource = cmd.ExecuteReader(); ;
                    DataList1.DataBind();
                }
                else if (idd == "6")
                {
                    strQuery = "Select * FROM ProductMst WHERE Cname='DESSERT'";

                    SqlCommand cmd = new SqlCommand(strQuery, cnn);


                    DataList1.DataSource = cmd.ExecuteReader(); ;
                    DataList1.DataBind();
                }
                else if (idd == "7")
                {
                    strQuery = "Select * FROM ProductMst WHERE Cname='BEVERAGES'";

                    SqlCommand cmd = new SqlCommand(strQuery, cnn);


                    DataList1.DataSource = cmd.ExecuteReader(); ;
                    DataList1.DataBind();
                }
                else if (idd == "8")
                {
                    strQuery = "Select * FROM ProductMst WHERE Cname='BREAKFAST'";

                    SqlCommand cmd = new SqlCommand(strQuery, cnn);


                    DataList1.DataSource = cmd.ExecuteReader(); ;
                    DataList1.DataBind();
                }
                else if (idd == "9")
                {
                    strQuery = "Select * FROM ProductMst WHERE Cname='CHIENESE'";

                    SqlCommand cmd = new SqlCommand(strQuery, cnn);


                    DataList1.DataSource = cmd.ExecuteReader(); ;
                    DataList1.DataBind();
                }
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (Session["id"] == null)
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("~/Login.aspx");
            }
             Session["addproduct"]= "true";
             if(e.CommandName=="AddToCart")
             {
                 Response.Redirect("MyCart.aspx?id=" + e.CommandArgument.ToString());
             }
            
    }

       /* protected void Button1_Click(object sender, EventArgs e)
        {
            
            Button btn = (Button)sender;
            int id = Int32.Parse(btn.CommandArgument.ToString());
            Response.Redirect("Mycart.aspx");
        }*/
    }
}