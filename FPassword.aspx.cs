using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

namespace ClickCafe
{
    public partial class FPassword : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsg.Text = "";
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ToString());
            string StrQuery = "SELECT Email, Password FROM UserMst WHERE Email='" + txtEmail.Text + "'";
            SqlCommand cmd = new SqlCommand(StrQuery, cnn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cnn.Open();
            DataTable dt = new DataTable();
            da.Fill(dt);
            SqlDataReader dr = cmd.ExecuteReader();

            if(dr.Read())
            {
                string username = dr["Email"].ToString();
                string password = dr["password"].ToString();
                MailMessage mm = new MailMessage("clickcafe72@gmail.com",txtEmail.Text);
                mm.Subject = "Your Password !";
                mm.Body = string.Format("Hello : <h1>{0}</h1> is your Email Id <br/> Your password is <h1>{1}</h1>",username,password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "clickcafe72@gmail.com"; 
                nc.Password = "blackpl82";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                //smtp.UseDefaultCredentials = false;
                smtp.Send(mm);
                lblmsg.Text = "Your password has been sent to " + txtEmail.Text;
                lblmsg.ForeColor = Color.Green;

            }

            
            else
            {
                lblmsg.Text = txtEmail.Text+" Email Id is not exist!";
                lblmsg.ForeColor = Color.Red;

            }
        }
    }
}