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

        protected void Page_Load(object sender, EventArgs e)
        {

        }

      //method used to add a new student to the Database
        protected void btnAddNewStudent_Click(object sender, EventArgs e)
        {
            //local variables for new user
            string studentName = txtstudentName.Text;
            string fieldOfStudy = txtFieldOfStudy.Text;

            //DBConnect object
            dbobj = new DBConnect();
            
            //Creating a Primary key based on the total entries in current DB
            SqlCommand countCommand = new SqlCommand();
            countCommand.CommandType = CommandType.StoredProcedure;
            countCommand.CommandText = "GetStudentCount";
            SqlParameter returnParm = new SqlParameter("@StudentID", DbType.Int32);
            returnParm.Direction = ParameterDirection.ReturnValue;
            dbobj.GetDataSetUsingCmdObj(countCommand);
            
            //set returned count to be a new StudentID value
            int studentID = int.Parse(countCommand.Parameters["@StudentID"].Value.ToString());

            //Database Updates
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "AddNewStudent";
            sqlCommand.Parameters.AddWithValue("@StudentID", studentID);
            sqlCommand.Parameters.AddWithValue("@Name", studentName);
            sqlCommand.Parameters.AddWithValue("@FieldOfStudy", fieldOfStudy);
            dbobj.DoUpdateUsingCmdObj(sqlCommand);
        }

        protected void txtstudentName_TextChanged(object sender, EventArgs e)
        {

        }

        public void showNewStudent()
        {
            SqlCommand objCommand = new SqlCommand();
            objCommand.CommandText = "ShowNewStudentEntry"; //my stored procedure
            
            SqlParameter inputParm = new SqlParameter("@StudentID", txtstudentName);
            inputParm.Direction = ParameterDirection.Input;
            inputParm.SqlDbType = SqlDbType.VarChar;
            inputParm.Size = 32;
            objCommand.Parameters.Add(inputParm);
            DBConnect dbconnect = new DBConnect();
            DataSet ds = dbconnect.GetDataSetUsingCmdObj(objCommand);

            gvNewStudent.DataSource = ds;
            gvNewStudent.DataBind();

            

        }



    }
}