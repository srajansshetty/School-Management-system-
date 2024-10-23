using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace shoolmanage
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShowDetails_Click(object sender, EventArgs e)
        {
            BindGridView();
        }
        private void BindGridView()
        {
            string connectionString = "Data Source=DESKTOP-A3NI1CD\\MSSQL2014;Initial Catalog=schoollogin;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT [Student Name], [Fathers Name], [Mothers Name], [Gender], [Date of Birth], [Email], [Department], [Phone] FROM [dbo].[schoollog]";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }
}