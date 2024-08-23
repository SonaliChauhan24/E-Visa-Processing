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
    public partial class OnsiteReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadOnsiteReport();
            }
        }
        private void LoadOnsiteReport()
        {
            DataTable dtOnsiteReport = GetOnsiteReport();
            gvOnsiteReport.DataSource = dtOnsiteReport;
            gvOnsiteReport.DataBind();
        }
        private DataTable GetOnsiteReport()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("EmployeeName", typeof(string));
            dt.Columns.Add("OnsiteLocation", typeof(string));
            dt.Columns.Add("OnsiteDate", typeof(DateTime));
            dt.Columns.Add("ReportDetails", typeof(string));
            dt.Columns.Add("Status", typeof(string));

            using (SqlConnection conn = new SqlConnection("uid=sa;password=Admin@123;database=Corporate;server=8V4T324\\SQLEXPRESS"))
            {
                SqlCommand cmd = new SqlCommand("SELECT EmployeeName, OnsiteLocation, OnsiteDate, ReportDetails, Status FROM OnsiteReports", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }

            return dt;
        }
    }
}