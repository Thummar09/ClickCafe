using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

namespace ClickCafe.ADMIN
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"]==null )
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            String mainconn = ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ToString();
            
            String strQuery, UIMGPath, imgExt, DBPath;
            imgExt = System.IO.Path.GetExtension(FileUpload1.FileName);
            UIMGPath = Server.MapPath("~/Images/"+drpcate.SelectedValue.ToString()+"/") + FileUpload1.FileName;

            DBPath = "Images/"+drpcate.SelectedValue.ToString()+"/" + FileUpload1.FileName;

            FileUpload1.SaveAs(UIMGPath);
            SqlConnection conn = new SqlConnection(mainconn);            
            strQuery = "INSERT INTO [dbo].[ProductMst] (PName,Detail,Price,Picture,Cname) VALUES(@PName,@Detail,@Price,@Picture,@Cname)";
            SqlCommand cmd = new SqlCommand(strQuery, conn);
            cmd.Parameters.AddWithValue("@PName", txtname.Text);
            cmd.Parameters.AddWithValue("@Detail", txtdetail.Text);
            cmd.Parameters.AddWithValue("@Price", txtprice.Text);
            cmd.Parameters.AddWithValue("@Picture", DBPath);
            cmd.Parameters.AddWithValue("@Cname", drpcate.SelectedItem.Value);
            
           conn.Open();
            int i = cmd.ExecuteNonQuery();
            if(i!=0)
            {
                Response.Write("<script>alert('Product Inserted')</script>");
                txtprice.Text = "";
                txtname.Text = "";
                txtdetail.Text = "";
                drpcate.SelectedIndex = 0;

            }
            else
            {
                Response.Write("<script>alert('Product Not Inserted')</script>");
            }
            Response.Redirect("AddProduct.aspx");
            conn.Close();
           System.Diagnostics.Debug.WriteLine("****" + strQuery);  
                    
        }

        
    }
}