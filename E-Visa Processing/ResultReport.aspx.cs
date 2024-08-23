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
    public partial class ResultReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Optionally, load data or set initial states here
            }
        }
        protected void btnGenerateReport_Click(object sender, EventArgs e)
        {
            // Load the final result report data
            LoadFinalResultReport();
        }
        private void LoadFinalResultReport()
        {
            DataTable dtFinalResultReport = GetFinalResultReport();
            gvFinalResultReport.DataSource = dtFinalResultReport;
            gvFinalResultReport.DataBind();
        }
        private DataTable GetFinalResultReport()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("CandidateId", typeof(int));
            dt.Columns.Add("CandidateName", typeof(string));
            dt.Columns.Add("ResultDate", typeof(DateTime));
            dt.Columns.Add("ResultStatus", typeof(string));
            dt.Columns.Add("Comments", typeof(string));

            using (SqlConnection conn = new SqlConnection("uid=sa;password=Admin@123;database=Corporate;server=8V4T324\\SQLEXPRESS"))
            {
                SqlCommand cmd = new SqlCommand("SELECT CandidateId, CandidateName, ResultDate, ResultStatus, Comments FROM ResultReport", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }

            return dt;
        }
    }
}