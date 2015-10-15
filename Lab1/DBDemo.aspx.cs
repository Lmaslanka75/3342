using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UtilitiesLibrary;
using System.Data;


namespace Lab1
{
    public partial class DBDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBConnect objDB = new DBConnect();
            String strSQL = "SELECT * FROM Students_Table";
            DataSet myDataSet = objDB.GetDataSet(strSQL);


            gvStudents.DataSource = myDataSet;
            gvStudents.DataBind();

        }
    }
}