using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TestGridView
{
    public partial class Login : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       
        protected void btnSumbit(object sender, EventArgs e)
        {
            string email = username.Text;
            string pass = password.Text;
            string msg = scalarReturn("select count(*) from staff_register where username='"+email+"' and password='"+pass+"'");

            if (msg.Equals("0"))
            {
                Response.Write("<script> alert('Invalid username and password')</script>");
            }
            else
            {
                Session["id"] = scalarReturn("select Id from staff_register where username='" + email + "' and password='" + pass + "'");
                msg = scalarReturn("select designation from staff_register where username='"+email+"' and password='"+pass+"'");
                if (msg.Equals("1"))
                {
                    Session["role"] = msg;
                    Session["username"] = username.Text;
                    Response.Redirect("welcome.aspx");
                    
                }
                else if (msg.Equals("2"))
                {
                    Session["role"] = msg;
                    Session["username"] = username.Text;
                    Response.Redirect("welcome_user.aspx");
                    
                }
                else
                {
                    Session.RemoveAll();
                    Session.Abandon();
                    Response.Redirect("Login.aspx");
                }
            }


            //int RowCount;
            //string str, UserName, Password;
            //SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True");
            //SqlCommand com;
            //SqlDataAdapter sqlda;
            //DataTable dt;  
            //con.Open();
            //str = "Select * from staff_register";
            //com = new SqlCommand(str);
            //sqlda = new SqlDataAdapter(com.CommandText, con);
            //dt = new DataTable();
            //sqlda.Fill(dt);  
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conDB"].ConnectionString);
            //System.Data.DataTable table = new DataTable("Userss");
            //------- SqlCommand cmd = new SqlCommand("Select * from Userss where username=@username and password=@password", con);
                //SqlCommand cmd = new SqlCommand("usp_loginCheck", con);
                //cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@username", username.Text);
                //cmd.Parameters.AddWithValue("@password", password.Text);
                //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //sda.Fill(ds);
                //var dt = new DataTable();
                //sda.Fill(dt);



            //RowCount = dt.Rows.Count;
            //for (int i = 0; i < RowCount; i++)
            //{
            //    UserName = dt.Rows[i]["username"].ToString();
            //    Password = dt.Rows[i]["password"].ToString();
            //    if (UserName == username.Text && Password == password.Text)
            //    {
            //        Session["username"] = UserName;
            //        if (dt.Rows[i]["designation"].ToString() == "1" || dt.Rows[i]["designation"].ToString() == "2"){
            //           
            //            Response.Redirect("welcome.aspx");
            //        }
            //        else if (dt.Rows[i]["designation"].ToString() == "3" || dt.Rows[i]["designation"].ToString() == "4")
            //            
            //            Response.Redirect("welcome_user.aspx");
            //        //else if (dt.Rows[i]["Role"].ToString() == "PaidUser")
            //        //    Response.Redirect("~/PaidUser/PaidUser.aspx");
            //    }
            //    else
            //    {
            //        if (i == RowCount-1)
            //        {

            //            Response.Write("Invalid User Name or Password! Please try again!");
            //        }
                    
            //    }
            //}  
            

            //SqlParameter oblogin = new SqlParameter();
            //oblogin.ParameterName = "@IsLoginCorrect";
            //oblogin.SqlDbType = SqlDbType.Bit;
            //oblogin.Direction = ParameterDirection.Output;
            //cmd.Parameters.Add(oblogin);

            
            //
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //int res = Convert.ToInt32(oblogin.Value);


            //if (dt!=null && dt.Rows.Count > 0)
            //{
            //    bool IsLoginCorrect = Convert.ToBoolean(dt.Rows[0]["IsLoginCorrect"]);
            //    if (IsLoginCorrect == true)
            //    {
                    
            //        Session["username"] = username.Text;
            //        Response.Redirect("welcome.aspx");
            //    }
            //    else
            //    {

            //        Response.Write("Invalid User");
            //    }
                
                

            //}
            //else
            //{
            //    Response.Write("Data Not exists");
            //}
            
        }
        public string scalarReturn(string q)
        {
            SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=mytest;Trusted_Connection=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
            string s = cmd.ExecuteScalar().ToString();
            return s;
        }
        protected void clear(object sender, EventArgs e)
        {
            username.Text = "";
            password.Text = "";
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click2(object sender, EventArgs e)
        {

        }
    }
}