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
        cart1 mycart;
        SqlCommand cmd;
        SqlConnection cnn;
        string strQuery;
        DataTable dt = new DataTable();

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
            
            
    }

       protected void Button1_Click(object sender, EventArgs e)
        {
            

            if (Session["mycart"]==null)
            {
                mycart = new cart1();
                Session["mycart"] = mycart;

            }
              Button btn = sender as Button;
               string pid = btn.CommandArgument;
               string uid;
               uid = Session["id"].ToString(); // get uid from email stored in session
               strQuery="select UID from UserMst Where Email='" + uid +"'"; ;
               SqlCommand cmd = new SqlCommand(strQuery, cnn);
               uid = cmd.ExecuteScalar().ToString();

               //Response.Write("<script>alert('"+strQuery+"');</script>");
               Response.Write(strQuery);


               strQuery = "select count(*) from CartMst WHere UID="+uid+" and PID= "+pid+"";
               cmd = new SqlCommand(strQuery, cnn);
               int rows = Int32.Parse(cmd.ExecuteScalar().ToString());
               //check whether pid already exist for given uid

               if(rows==0)
                {
                   strQuery = "Insert Into CartMst (Qnt,PID,UID) Values(1,"+pid+","+uid+") ";
                   cmd = new SqlCommand(strQuery,cnn);
                   cmd.ExecuteNonQuery();
               }
                else
                {
                   strQuery = "Update CartMst SET Qnt= Qnt+1 Where PID=" + pid + " and UID = " + uid; ;
                   cmd = new SqlCommand(strQuery, cnn);
                   cmd.ExecuteNonQuery();
                }


            /*string PID = Request.QueryString["pid"];
            mycart = (cart1)Session["mycart"];
            DataTable dt = dataaccess.selectQuery("select * from ProductMst where PID="+PID);
            DataRow row = dt.Rows[0];
            mycart.Insert(new cartItem(Int32.Parse(PID),
                  row["PName"].ToString(),
                  Int32.Parse(row["Price"].ToString()),
                  row["Picture"].ToString(),
                  row["Cname"].ToString(),
                  row["Detail"].ToString(), 1));

              */
        }
       
    }
}