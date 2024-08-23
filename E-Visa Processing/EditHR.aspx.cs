using System;
using System.Data.SqlClient;

namespace E_Visa_Processing
{
    public partial class EditHR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any initialization code can go here
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string hrId = txtID.Text.Trim();

            if (!string.IsNullOrEmpty(hrId))
            {
                string connectionString = "uid=sa; password=Admin@123; database=Corporate; server=8V4T324\\SQLEXPRESS";
                string query = "SELECT * FROM AddHR WHERE ID = '" + hrId + "'";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);

                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        txtName.Text = reader["name"].ToString();
                        ddlGender.Text = reader["gender"].ToString();
                        txtDate.Text = Convert.ToDateTime(reader["date"]).ToString("yyyy-MM-dd");
                        txtPhoneNo.Text = reader["phoneno"].ToString();
                        txtAddress.Text = reader["address"].ToString();
                        txtEmail.Text = reader["email"].ToString();
                        
                        Label1.Text = "";
                    }
                    else
                    {
                        Label1.Text = "HR not found.";
                       
                    }
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string hrId = txtID.Text.Trim();
            string username = txtName.Text.Trim();
            string gender = ddlGender.Text.Trim();
            string hireDate = Convert.ToDateTime(txtDate.Text).ToString("yyyy-MM-dd");
            string phoneno = txtPhoneNo.Text.Trim();
            string address = txtAddress.Text.Trim();
            string email = txtEmail.Text.Trim();

            if (!string.IsNullOrEmpty(hrId))
            {
                string connectionString = "uid=sa; password=Admin@123; database=Corporate; server=8V4T324\\SQLEXPRESS";
                string query = "UPDATE AddHR SET name = '" + username + "',  gender = '" + gender + "', date = '" + hireDate + "', phoneno = " + phoneno + ", address = '" + address + "', email = '" + email + "' WHERE ID = '" + hrId + "'";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Label1.Text = "HR details updated successfully.";
                    }
                    else
                    {
                        Label1.Text = "Error updating HR details.";
                    }
                }
            }
        }
    }
}