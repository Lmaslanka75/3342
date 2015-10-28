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
    public partial class frmStudentRegistration : System.Web.UI.Page
    {
        DBConnect dbobj = new DBConnect();
        SqlCommand objCommand = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
 
            }

        }

      //method used to add a new student to the Database
        protected void btnAddNewStudent_Click(object sender, EventArgs e)
        {
            //local variables for new user
            int StudentID = getStudentCount() + 1;
            string studentName = txtstudentName.Text;
            string fieldOfStudy = txtFieldOfStudy.Text;
            
            //Database Updates
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "AddNewStudent";
            
            SqlParameter inputParameter = new SqlParameter("@StudentID", StudentID);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.Int;
            inputParameter.Size = 4;
            sqlCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@Name", studentName);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 50; 
            sqlCommand.Parameters.Add(inputParameter);

            inputParameter = new SqlParameter("@FieldOfStudy", fieldOfStudy);
            inputParameter.Direction = ParameterDirection.Input;
            inputParameter.SqlDbType = SqlDbType.VarChar;
            inputParameter.Size = 200; 
            sqlCommand.Parameters.Add(inputParameter);
            dbobj.DoUpdateUsingCmdObj(sqlCommand);

            objCommand = new SqlCommand();
            //Commands to display the gridview 
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "ShowNewStudentEntry"; //my stored procedure

            SqlParameter inputParm = new SqlParameter("@StudentID", StudentID);
            inputParm.Direction = ParameterDirection.Input;
            inputParm.SqlDbType = SqlDbType.Int;
            inputParm.Size = 32;
            objCommand.Parameters.Add(inputParm);


            showNewStudent(StudentID);

            //Update DB with new values
            //dbobj.DoUpdateUsingCmdObj(sqlCommand);
           // DataSet ds = dbobj.GetDataSetUsingCmdObj(objCommand);
            //bind to gridview
            //gvNewStudent.DataSource = ds;
            //gvNewStudent.DataBind();
        }

        protected void txtstudentName_TextChanged(object sender, EventArgs e)
        {

        }
        public int getStudentCount() 
        {
            //Creating a Primary key based on the total entries in current DB
            SqlCommand countCommand = new SqlCommand();
            countCommand.CommandType = CommandType.StoredProcedure;
            countCommand.CommandText = "GetStudentCount";

            SqlParameter returnParm = new SqlParameter("@StudentID", DbType.Int32);
            returnParm.Direction = ParameterDirection.ReturnValue;
            countCommand.Parameters.Add(returnParm);

            //execute GetStudentCount procedure
            dbobj.GetDataSetUsingCmdObj(countCommand);

            //set returned count to be a new StudentID value
            int StudentID;
            StudentID = int.Parse(countCommand.Parameters["@StudentID"].Value.ToString());
            return StudentID;
        }

        //method to load new value into grid view
        public void showNewStudent(int studentid)
        {
            
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "ShowNewStudentEntry"; //my stored procedure

            objCommand.Parameters.AddWithValue("@StudentID", studentid);

            DataSet ds;
            ds = dbobj.GetDataSetUsingCmdObj(objCommand);
            
            //bind to gridview
            gvNewStudent.DataSource = ds;
            gvNewStudent.DataBind();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmAddCourse.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCourseRegistration.apsx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void btnStudent_Click(object sender, EventArgs e)
        {

        }




    }
}