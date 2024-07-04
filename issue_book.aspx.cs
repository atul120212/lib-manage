using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;



namespace TestGridView
{
    public partial class issue_book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null || Session["role"].ToString() != "2")
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
            
        }


        


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchID = txtSearchID.Text;

            // Connection string from Web.config
            string connString = "Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True";

            // SQL query to search by ID
            string query = "SELECT * FROM myBooks WHERE Id = @Id";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Id", searchID);

                    try
                    {
                        conn.Open();

                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                    }
                    catch (Exception ex)
                    {
                        // Handle exception
                        Response.Write(ex.Message);
                    }
                }
            }
        }














        //protected DataTable submit()
        //{

        //    SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True");
        //    SqlCommand cmd = new SqlCommand("search_book", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@Id", Id.Text);
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    var dt = new DataTable();
        //    sda.Fill(dt);
        //    return dt;

        //}

    }
}