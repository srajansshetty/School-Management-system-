using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace schoolmanage
{
    public partial class school : System.Web.UI.Page
    {
        String gender;
        private object window;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-A3NI1CD\\MSSQL2014;Initial Catalog=schoollogin;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[schoollog]
           ([Student Name]
           ,[Fathers Name]
           ,[Mothers Name]
           ,[Gender]
           ,[Date of Birth]
           ,[Email]
           ,[Department]
           ,[Phone])
     VALUES
           ('" + Textname.Text + "','" + TextFname.Text + "','" + TextMname.Text + "','" + gender + "','" + Textdate.Text + "','" + TextEmail.Text + "','"+DropDownList1+"','" + Textphone.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

         
            string script = "<script>alert('Student details registered successfully'); window.location='details.aspx';</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script);
           

        }


        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            gender = "Male";
        }
        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            gender = "Female";
        }
        protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            gender = "Others";
        }
    }
}