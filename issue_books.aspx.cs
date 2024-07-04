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
    public partial class issue_books : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null || Session["role"].ToString() != "1")
            {
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
            if (!this.IsPostBack)
            {
                load();
            }
        }
        void load()
        {
            string str = "select * from issue_books";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
        }
    }
}