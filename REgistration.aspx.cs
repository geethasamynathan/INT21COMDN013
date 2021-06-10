using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1Demo
{
    public partial class REgistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string Empdetail = "";
            Empdetail += txtName.Text + " "+rblGender.SelectedValue + " ";
            Empdetail += $"{txtMobile.Text}  {DropDownList1.SelectedItem.Text} ";
            Empdetail += $"{calDOJ.SelectedDate.ToShortDateString()} {txtEmail.Text}";
            Empdetail += FileUpload1.FileName;
            lblEmpdetail.Text = Empdetail;
           
        }
    }
}