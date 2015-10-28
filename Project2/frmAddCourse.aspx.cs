using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using UtilitiesLibrary;


namespace Project2
{
    public partial class frmAddCourse : System.Web.UI.Page
    {
        DBConnect dbobj = new DBConnect();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadCourses();
            }
        }

        protected void btnAddCourse_Click(object sender, EventArgs e)
        {
            int CRN = int.Parse(txtCRN.Text);
            string courseTitle = txtCourseTitle.Text;
            string DepartmentID = txtDepartmentID.Text;
            string Semester = txtSemester.Text;
            string section = txtSemester.Text;
            string professor = txtProfessor.Text;
            string DayCode = txtDayCode.Text;
            string TimeCode = txtTimeCode.Text;
            float creditHours = float.Parse(txtCreditHours.Text);
            int maximumSeats = int.Parse(txtMaximumSeats.Text);
            int numberOfSeatsAvailable = int.Parse(txtNumberOfSeatsAvailable.Text);

            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "AddNewCourse";

            objCommand.Parameters.AddWithValue("@CRN", CRN);
            objCommand.Parameters.AddWithValue("@CourseTitle", courseTitle);
            objCommand.Parameters.AddWithValue("@DepartmentID", DepartmentID);
            objCommand.Parameters.AddWithValue("@Semester", Semester);
            objCommand.Parameters.AddWithValue("@Section", section);
            objCommand.Parameters.AddWithValue("@Professor", professor);
            objCommand.Parameters.AddWithValue("@DayCode", DayCode);
            objCommand.Parameters.AddWithValue("@TimeCode", TimeCode);
            objCommand.Parameters.AddWithValue("@CreditHours", creditHours);
            objCommand.Parameters.AddWithValue("@NumberofSeatsAvailable", numberOfSeatsAvailable);
            objCommand.Parameters.AddWithValue("@MaximumSeats", maximumSeats);

            dbobj.DoUpdateUsingCmdObj(objCommand);

        }

        protected void btnStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmStudentRegistration.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCourseRegistration.aspx");
        }


        public void loadCourses()
        {
            DBConnect objDB = new DBConnect();
            SqlCommand objCommand = new SqlCommand();

            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "ShowAllCourses";
            DataSet myDS = objDB.GetDataSetUsingCmdObj(objCommand);
            gvCourses.DataSource = myDS;
            gvCourses.DataBind();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void gvCourses_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvCourses_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex;
            int selectedCRN = int.Parse(gvCourses.Rows[rowIndex].Cells[1].Text);
            DBConnect objDB = new DBConnect();
            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "DeleteCourse";
            objCommand.Parameters.AddWithValue("@CRN", selectedCRN);
            objDB.GetDataSetUsingCmdObj(objCommand);
            objDB.DoUpdateUsingCmdObj(objCommand);

            loadCourses();
        }
    }
}