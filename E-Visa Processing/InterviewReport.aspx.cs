using E_Visa_Processing;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Visa_Processing
{
    public partial class InterviewReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Optionally load data or set initial states here
            }
        }

        protected void btnGenerateReport_Click(object sender, EventArgs e)
        {
            LoadInterviewReport();
        }
        private void LoadInterviewReport()
        {
            DataTable dtInterviewReport = GetInterviewReport();
            gvInterviewReport.DataSource = dtInterviewReport;
            gvInterviewReport.DataBind();
        }

        private DataTable GetInterviewReport()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("EmployeeName", typeof(string));
            dt.Columns.Add("InterviewDate", typeof(DateTime));
            dt.Columns.Add("InterviewStatus", typeof(string));
            dt.Columns.Add("Comments", typeof(string));

            using (SqlConnection conn = new SqlConnection("uid=sa;password=Admin@123;database=Corporate;server=8V4T324\\SQLEXPRESS"))
            {
                SqlCommand cmd = new SqlCommand("SELECT EmployeeName, InterviewDate, InterviewStatus, Comments FROM interviewReport", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }

            return dt;
        }
    }
}