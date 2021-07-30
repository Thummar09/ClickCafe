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
    public partial class Login : System.Web.UI.Page
    {
        private string connectionstring = ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsg.Text = "";
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            /** cnn.Open();
             string StrQuery = "SELECT * FROM UserMst WHERE Email='"+txtusername.Text+"' and Password='"+txtpassword.Text+"'";
             System.Diagnostics.Debug.WriteLine(StrQuery);
             SqlCommand cmd = new SqlCommand(StrQuery,cnn);
             SqlDataAdapter da = new SqlDataAdapter(cmd);
             DataTable dt = new DataTable();
             da.Fill(dt);
             if (dt.Rows.Count > 0)
             {
                 Session["uid"] = dt.Rows[0]["uid"].ToString();
                 Response.Redirect("Home.aspx");
             }
             else
             {
                 lblmsg.Text = "Invalid email or password";

             }*/

            string email = txtemail.Text;
            string password = txtpassword.Text;

            string msg = scalarReturn("select count(*) from UserMst where Email='"+email+"' and Password='"+password+"'");
             if(msg.Equals("0"))
            {
                Response.Write("<script>alert('Invalid Email or Password')</script>");
            }
            else
            {
                Session["id"] = scalarReturn("select Email from UserMst where Email='" + email + "' and Password='" + password + "'");;
                msg = scalarReturn("select role_id from UserMst where Email='" + email + "'");
                 if (msg.Equals("1"))
                {
                    Session["role"] = msg;
                    Response.Redirect("~/ADMIN/AddProduct.aspx");
                    
                }
                else if (msg.Equals("2"))
                {
                    Session["role"] = msg;
                    Response.Redirect("~/Home.aspx");
                }
                else
                {
                    Session.RemoveAll();
                    Session.Abandon();
                    Response.Redirect("~/Login.aspx");
                }
            }
            System.Diagnostics.Debug.Write(msg);
        }
        public string scalarReturn(string q)
        {
            SqlConnection conn = new SqlConnection(connectionstring);
            conn.Open();
            SqlCommand cmd = new SqlCommand(q, conn);
            string s = cmd.ExecuteScalar().ToString();
            return s;

        }
    }
}