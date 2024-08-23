using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Visa_Processing
{
    public partial class DeleteHR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // Validate and parse the employee ID
            int employeeid;
            bool isValidId = int.TryParse(TextBox1.Text, out employeeid);

            if (isValidId)
            {
                // Connection string
                string connectionString = "uid=sa; password=Admin@123; database=Corporate; server=8V4T324\\SQLEXPRESS";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    try
                    {
                        conn.Open();

                        // Query to check if the EmployeeId exists
                        string checkUserQuery = "SELECT COUNT(*) FROM AddHR WHERE id = " + employeeid;

                        using (SqlCommand checkCmd = new SqlCommand(checkUserQuery, conn))
                        {
                            int userExists = (int)checkCmd.ExecuteScalar();

                            if (userExists > 0)
                            {
                                // If the user exists, proceed with deletion

                                // Delete login details first
                                string deleteLoginQuery = "DELETE FROM AddHR WHERE id = " + employeeid;

                                using (SqlCommand deleteLoginCmd = new SqlCommand(deleteLoginQuery, conn))
                                {
                                    deleteLoginCmd.ExecuteNonQuery();
                                }

                                // Delete employee details
                                string deleteEmployeeQuery = "DELETE FROM AddHR WHERE id = " + employeeid;

                                using (SqlCommand deleteEmployeeCmd = new SqlCommand(deleteEmployeeQuery, conn))
                                {
                                    deleteEmployeeCmd.ExecuteNonQuery();
                                }

                                lblMessage.Text = "HR record deleted successfully.";
                                lblMessage.ForeColor = System.Drawing.Color.Green;
                            }
                            else
                            {
                                // If the user does not exist, show an error message
                                lblMessage.Text = "No such record exists.";
                                lblMessage.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        // Log or handle the exception as needed
                        lblMessage.Text = "An error occurred: " + ex.Message;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                    finally
                    {
                        conn.Close();
                    }
                }
            }
            else
            {
                lblMessage.Text = "Please enter a valid HR ID.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }


        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
}