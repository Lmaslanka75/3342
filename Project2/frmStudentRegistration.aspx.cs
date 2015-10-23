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

        protected void btnAddNewStudent_Click(object sender, EventArgs e)
        {
            //local variables for new user
            int studentID = int.Parse(txtstudentID.Text);
            string studentName = txtstudentName.Text;
            string fieldOfStudy = txtFieldOfStudy.Text;

            //DBConnect object
            dbobj = new DBConnect();

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


    }
}