using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace E_Visa_Processing
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa;password=Admin@123;database=Corporate;server=8V4T324\\SQLEXPRESS");
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from login where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read()) // Check if a row was returned
            {
                string username = dr["username"].ToString();
                string password = dr["password"].ToString();


                if (txtUsername.Text == username && txtPassword.Text == password)
                {
                    Label1.Text = "Welcome";
                }
                else
                {
                    Label1.Text = "Invalid credentials :(";
                }
            }
            else
            {
                Label1.Text = "Invalid credentials :(";
            }
            dr.Close();
            con.Close();
        }
           


        

        protected void btnClose_Click(object sender, EventArgs e)
        {
            // Close the page or redirect to a different page
            Response.Redirect("AdminLogin.aspx"); 
        }
    }
}