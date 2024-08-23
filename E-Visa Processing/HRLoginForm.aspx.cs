using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Visa_Processing
{
    public partial class HRLoginForm : System.Web.UI.Page
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
                    Response.Redirect("HRLogin.aspx");
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
            Response.Redirect("VisaPortal.aspx");
        }
    }
}