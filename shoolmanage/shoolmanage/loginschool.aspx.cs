using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoolmanage
{
    public partial class loginschool : System.Web.UI.Page
    {




        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string enteredUsername = txtUsername.Text; 
            string enteredPassword = txtPassword.Text; 

          
            string FixedUsername = "admin";
            string FixedPassword = "Admin123";

           
            if (enteredUsername == FixedUsername && enteredPassword == FixedPassword)
            {
              
                Response.Redirect("school.aspx");
            }
            else
            {
             
                lblMessage.Text = "Invalid username or password.";
                lblMessage.Visible = true; 
                lblMessage.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}
    