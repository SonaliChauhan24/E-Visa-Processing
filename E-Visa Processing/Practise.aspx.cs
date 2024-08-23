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
    public partial class Practise : System.Web.UI.Page
    {
        string Name, Email, Address, Gender, PhoneNo , Date;
        int  id;
        protected void btnSubmitDetails_Click(object sender, EventArgs e)
        {
            Name = txtName.Text;
            Email = txtEmail.Text;
            Address = txtAddress.Text;
            Gender = ddlGender.SelectedItem.ToString();

            id = int.Parse(txtID.Text);
            PhoneNo = txtPhoneNo.Text;
            Date = txtDate.Text;

            SqlConnection con = new SqlConnection("uid=sa;password=Admin@123;database=Corporate;server=8V4T324\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into AddHR values(" + id + ",'" + txtName.Text + "','" + txtEmail.Text + "','" + txtPhoneNo.Text + "', '" + ddlGender.Text + "', '" + txtAddress.Text + "',' " + txtDate.Text + "')", con);
            Label1.Text = cmd.CommandText;
            int i = cmd.ExecuteNonQuery();
            Label1.Text = " Details inserted successfully";
        }

   
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    }
}