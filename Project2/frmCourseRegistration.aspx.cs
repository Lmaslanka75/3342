using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UtilitiesLibrary;
using System.Data;

namespace Project2
{
    

    public partial class frmCourseRegistration : System.Web.UI.Page
    {
        DBConnect dbobj = new DBConnect();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindSemester();
            }
        }

        protected void ddlSemester_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindSemester();
        }

        public void bindSemester()
        {
            string selectedSemester = ddlSemester.SelectedValue;
            string departmentQuery = "SELECT * FROM Course WHERE Semester = '" + selectedSemester + "'";
            ddlDepartment.DataSource = dbobj.GetDataSet(departmentQuery);
            ddlDepartment.DataTextField = "DepartmentID";
            ddlDepartment.DataValueField = "CRN";
            ddlDepartment.DataBind();
 
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
        }

        protected void btnAddNewStudent_Click(object sender, EventArgs e)
        {


        }

        protected void btnEnter_Click(object sender, EventArgs e)
        {
            //txtstudentID.Text 
            txtstudentName.Text;
            //string

            string studentID;
            string studentName;
            string fieldOfStudy;


        }
    }
}