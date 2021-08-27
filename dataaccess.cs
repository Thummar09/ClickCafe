using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ClickCafe
{
    public static class dataaccess
    {
        private static string mycon;

        static dataaccess()
        {
            mycon = WebConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ConnectionString;
        }

        public static DataTable selectQuery(string query)
        {
            DataTable dt = new DataTable();
            SqlConnection cnn = new SqlConnection(mycon);
            cnn.Open();
            SqlCommand cmd = new SqlCommand(query,cnn);
            dt.Load(cmd.ExecuteReader());
            cnn.Close();
            return dt;
        }
    }
    
       
        

        
    

    
    

    
}