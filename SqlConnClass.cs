using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ClickCafe
{
    public class SqlConnClass
    {
        SqlConnection cnn = new SqlConnection();
        public DataTable table = new DataTable();

        public SqlConnClass()
        {
            cnn.ConnectionString = ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ConnectionString;
        }

        public void retrieveData(string strQuery)
        {
            cnn.Open();
            SqlDataAdapter da = new SqlDataAdapter(strQuery, cnn);
            da.Fill(table);
            cnn.Close();
        }
        public void commandExc(string strQuery)
        {
            cnn.Open();
            SqlCommand cmd = new SqlCommand(strQuery, cnn);
            int rowInfected = cmd.ExecuteNonQuery();
            if(rowInfected>0)
            {
                HttpContext.Current.Response.Write("<script>alert('Your Command Done');</script>");
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('Something goes wrong in DBMS, try again..');</script>");

            }
            cnn.Close();

        }
    }
}