using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Reflection.Emit;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Visa_Processing
{
    public partial class VisaStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadVisaDetails();
            }
        }

        private void LoadVisaDetails()
        {
            DataTable dtVisaDetails = GetVisaDetails();
            gvVisaDetails.DataSource = dtVisaDetails;
            gvVisaDetails.DataBind();
        }

        private DataTable GetVisaDetails()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("VisaId", typeof(int));
            dt.Columns.Add("EmployeeName", typeof(string));
            dt.Columns.Add("VisaStatus", typeof(string));
            dt.Columns.Add("ExpiryDate", typeof(DateTime));

            using (SqlConnection conn = new SqlConnection("uid=sa;password=Admin@123;database=Corporate;server=8V4T324\\SQLEXPRESS"))
            {
                SqlCommand cmd = new SqlCommand("SELECT VisaId, EmployeeName, VisaStatus, ExpiryDate FROM visa", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }

            return dt;
        }

        protected void gvVisaDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Renew")
            {
                int visaId = Convert.ToInt32(e.CommandArgument);


                txtVisaId.Text = visaId.ToString();


                pnlRenewalRequest.Visible = true;
            }
        }

        protected void btnSubmitRenewal_Click(object sender, EventArgs e)
        {
            int visaId = Convert.ToInt32(txtVisaId.Text);
            string reason = txtReason.Text.Trim();


            SaveRenewalRequest(visaId, reason);


            LoadVisaDetails();
            pnlRenewalRequest.Visible = false;
        }

        private void SaveRenewalRequest(int visaId, string reason)
        {
            using (SqlConnection conn = new SqlConnection("uid=sa;password=Admin@123;database=Corporate;server=8V4T324\\SQLEXPRESS"))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO renewalRequests (VisaId, Reason) VALUES (@visaId, @reason)", conn);
                cmd.Parameters.AddWithValue("@VisaId", visaId);
                cmd.Parameters.AddWithValue("@Reason", reason);

                conn.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = cmd.CommandText;
                int i = cmd.ExecuteNonQuery();

                Label1.Text = " Request Submitted successfully";
                conn.Close();
            }
        }


    }
}