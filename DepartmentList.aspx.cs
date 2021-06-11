using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFwithASPwebApp
{
    public partial class DepartmentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel2.Visible = false;
                Panel1.Visible = false;
                DropDownList1.Items.Add("Get All Departments");
                DropDownList1.Items.Add(" Add New Department");
                DropDownList1.Items.Add(" GetDepartmentById");
            }
        }

        protected void btnGetAllDepartments_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            ComDN013Entities entities = new ComDN013Entities();
           GridView1.DataSource= entities.tblDepartments.ToList();
            GridView1.DataBind();
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
           

        }

        protected void btnAddNewDept_Click(object sender, EventArgs e)
        {
            tblDepartment tblDepartment = new tblDepartment();
            tblDepartment.ID=int.Parse(txtDepartmentId.Text);
            tblDepartment.DepartmentName = txtDepartmentName.Text;
            tblDepartment.Location = txtDepartmentLocation.Text;
            ComDN013Entities entities = new ComDN013Entities();
            entities.tblDepartments.Add(tblDepartment);
            entities.SaveChanges();
            lblAddNewdeptStatus.Text = "Department added successfully";

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedItem.Text== "Get All Departments")
            {
                Panel1.Visible = true;
                ComDN013Entities entities = new ComDN013Entities();
                GridView1.DataSource = entities.tblDepartments.ToList();
                GridView1.DataBind();
            }
            else if(DropDownList1.SelectedItem.Text == " Add New Department")
            {
                Panel2.Visible = true;
                
            }
           
        }

    }
}