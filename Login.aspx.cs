using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1Demo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUsername.Text=="" || txtPassword.Text =="")
            {
                // Response.Write("<script>alert('Username or password should not be empty');</Script>");
                lblStatus.Text = "Username or password should not be empty";
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
            else if(txtUsername.Text=="Admin" && txtPassword.Text=="Admin")
            {
               // Response.Write("<script>alert('Login successful');</Script>");
                lblStatus.Text = "Login success";
                lblStatus.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
               // Response.Write("<script>alert('Invalid username or password');</Script>");
                lblStatus.Text = "Invalid username or password";
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}