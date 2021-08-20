using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace ClickCafe.ADMIN
{
    public partial class ViewProduct : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }
        private void BindGrid()
        {
            string myconn= ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ToString();
            
            
            using (SqlConnection con = new SqlConnection(myconn))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM ProductMst", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter da = new SqlDataAdapter())
                    {
                        da.SelectCommand = cmd;
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        lblcnt.Text = dt.Rows.Count.ToString();
                    }
                }
            }
        }
        

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           
            foreach (GridViewRow row in GridView1.Rows)
            {
                int pid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM ProductMst WHERE PID=@PID", con))

                    {
                        cmd.Parameters.AddWithValue("@PID", pid);
                        DataTable dt = new DataTable();
                        cmd.CommandType = CommandType.Text;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblcnt.Text = dt.Rows.Count.ToString();
                        con.Close();
                    }
                }
                
                    
                   
                
            }

            this.BindGrid();


        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int pid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            
            string pname = (row.Cells[1].Controls[0] as TextBox).Text;
            string price = (row.Cells[2].Controls[0] as TextBox).Text;
            string detail = (row.Cells[3].Controls[0] as TextBox).Text;
            string myconn = ConfigurationManager.ConnectionStrings["ClickCafeConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(myconn))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE ProductMst SET PName = @PName, Price = @Price, Detail=@Detail  WHERE PID = @PID"))
                {
                    cmd.Parameters.AddWithValue("@PID", pid);
                    cmd.Parameters.AddWithValue("@PName", pname);
                    cmd.Parameters.AddWithValue("@Price", price);
                    cmd.Parameters.AddWithValue("@Detail", detail);
                    
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }



        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
            {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }
        
    }
        

    
}