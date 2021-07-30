using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Text;



namespace ClickCafe
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection cnn = new SqlConnection();
        static int otp;
        bool verified = false;
       
        public void Page_Load(object sender, EventArgs e)
        {
            cnn.ConnectionString = ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ConnectionString;
            cnn.Open();
          
        }

        public void Btnreg_Click(object sender, EventArgs e)
        {
           

            if (IsValid)
            { 
            string gender;
            if (rdofemale.Checked == true)
            {
                gender = "Female";
            }
            else
            {
                gender = "Male";
            }
                string strQuery= "INSERT INTO [dbo].[UserMst]([FName],[LName],[Mobile] ,[Gender],[Address] ,[City],[Pincode],[Email] ,[Password],[role_id])  VALUES('" + txtfname.Text + "', '" + txtlname.Text + "', '" + txtmobile.Text + "', '" + gender + "', '" + txtadd.Text + "', '" + txtcity.Text + "', '" + txtpincode.Text + "', '" + txtemail.Text + "', '" + txtpassword.Text + "',2)";

            SqlCommand cmd = new SqlCommand(strQuery, cnn);
                System.Diagnostics.Debug.Write(strQuery);
                {
                   


                    if (otplbl.Text == "Verification Successful")
                    {
                        cmd.ExecuteNonQuery();
                        Response.Redirect("Login.aspx");
                    }
                    


                }
            }

        }

        protected void btnverify_Click(object sender, EventArgs e)
        {
            
            otp = RandomNumber(1001,9999);
            
            MailMessage mm = new MailMessage("clickcafe72@gmail.com", txtemail.Text.Trim());
            mm.Subject = "Activation Code !";
            mm.Body = "Your Activation Code is:" + otp;   
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
            smtp.Send(mm);
            Label1.Text = "Your Activation Code has been sent to " + txtemail.Text;
            //btnverify.Text = "Verify";

        }
        protected void verifyOTP(object sender, EventArgs e)
        {
            string s = txtverify.Text.Trim();
            if(s.Length == 4)
            {
                int n = Int32.Parse(s);
                if(n == otp)
                {
                    verified = true;
                    otplbl.Visible = true;
                    otplbl.Text = "Verification Successful";
                    otplbl.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    verified = false;
                    otplbl.Visible = true;
                    otplbl.Text = "Wrong OTP";
                    otplbl.ForeColor = System.Drawing.Color.Red;
                }
            }
            

        }
        protected void showBox(object sender, EventArgs e)
        {
            if(txtemail.Text.Trim() == "")
            {
                txtverify.Visible = false;
            }
            else
            {
                txtverify.Visible = true;
            }
        }
        private static int RandomNumber(int min, int max)
        {
            Random random = new Random();
            return random.Next(min, max);
        }
    }
}