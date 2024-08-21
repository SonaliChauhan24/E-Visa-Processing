using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Visa_Processing
{
    public partial class E_visaPortal : System.Web.UI.Page
    {
        protected void btnAdminSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa;password=Admin@123;database=Corporate;server=8V4T324\\SQLEXPRESS");
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from login where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", txtAdminUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtAdminPassword.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read()) // Check if a row was returned
            {
                string username = dr["username"].ToString();
                string password = dr["password"].ToString();


                if (txtAdminUsername.Text == username && txtAdminPassword.Text == password)
                {
                    Response.Redirect("AdminLogin.aspx");
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


        protected void btnHRSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa;password=Admin@123;database=Corporate;server=8V4T324\\SQLEXPRESS");
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from login where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", txtHRUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtHRPassword.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read()) // Check if a row was returned
            {
                string username = dr["username"].ToString();
                string password = dr["password"].ToString();


                if (txtHRUsername.Text == username && txtHRPassword.Text == password)
                {
                    Response.Redirect("HRLogin.aspx");
                }
                else
                {
                    Label2.Text = "Invalid credentials :(";
                }
            }
            else
            {
                Label2.Text = "Invalid credentials :(";
            }
            dr.Close();
            con.Close();
        }

        protected void btnEmployeeSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa;password=Admin@123;database=Corporate;server=8V4T324\\SQLEXPRESS");
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from login where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", txtEmployeeUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtEmployeePassword.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read()) // Check if a row was returned
            {
                string username = dr["username"].ToString();
                string password = dr["password"].ToString();


                if (txtEmployeeUsername.Text == username && txtEmployeePassword.Text == password)
                {
                    Response.Redirect("EmployeeLogin.aspx");
                }
                else
                {
                    Label3.Text = "Invalid credentials :(";
                }
            }
            else
            {
                Label2.Text = "Invalid credentials :(";
            }
            dr.Close();
            con.Close();
        }



    }
}