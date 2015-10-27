using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UtilitiesLibrary;
using System.Data;
using System.Data.SqlClient;


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
                bindCourseTitle();
            }
        }

        protected void ddlSemester_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindSemester();
        }

        protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindCourseTitle();
        }

        public void bindSemester()
        {
            string selectedSemester = ddlSemester.SelectedValue;
            string departmentQuery = "SELECT * FROM Course WHERE Semester = '" + selectedSemester + "'";
            ddlDepartment.DataSource = dbobj.GetDataSet(departmentQuery);
            ddlDepartment.DataTextField = "DepartmentID";
            ddlDepartment.DataValueField = "DepartmentID";
            ddlDepartment.DataBind();
 
        }

        public void bindCourseTitle()
        {
            string selectedDepartment = ddlSemester.SelectedValue;

            //Database Updates
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "GetCourseTitle";
            sqlCommand.Parameters.AddWithValue("@selectedDepartment", selectedDepartment);
            ddlDepartment.DataSource = dbobj.GetDataSetUsingCmdObj(sqlCommand);
            // ddlDepartment.DataSource = dbobj.GetDataSet(departmentQuery);
            ddlDepartment.DataTextField = "DepartmentID";
            ddlDepartment.DataValueField = "CRN";
            ddlDepartment.DataBind();
        }


        protected void btnAddNewStudent_Click(object sender, EventArgs e)
        {

            Response.Redirect("frmStudentRegistration.aspx");
        }


        protected void btnEnter_Click(object sender, EventArgs e)
        {   
            //local variables for new user
            int studentID = int.Parse(txtstudentID.Text);
            string studentName = txtstudentName.Text;
            string fieldOfStudy = txtFieldOfStudy.Text;
            //DBConnect object
            DBConnect dbobj = new DBConnect();
//good code
            //Database Updates
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "AddNewStudent";
            sqlCommand.Parameters.AddWithValue("@StudentID", studentID);
            sqlCommand.Parameters.AddWithValue("@Name", studentName);
            sqlCommand.Parameters.AddWithValue("@FieldOfStudy", fieldOfStudy);

            dbobj.DoUpdateUsingCmdObj(sqlCommand);

    //bad code
            //SqlCommand objCommand = new SqlCommand();
            //objCommand.CommandType = CommandType.StoredProcedure;
            //objCommand.CommandText = "GetRentalCarAgencies";
            //objCommand.Parameters.AddWithValue("@city", city);
            //objCommand.Parameters.AddWithValue("@state", state);
            //DBConnect objDB = new DBConnect();
            //return objDB.GetDataSetUsingCmdObj(objCommand);        
        }


        protected void ddlCourseTitle_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        //search for students
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //local variables for new user
            int studentID = int.Parse(txtstudentID.Text);
            string studentName = txtstudentName.Text;
            string fieldOfStudy = txtFieldOfStudy.Text;

            //stored procedure
            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "searchStudents";      //MUST ADD THIS STORED PROCEDURE!!! " searchStudents





        }

        protected void btnStudent_Click(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmAddCourse.aspx");
        }


    }
}