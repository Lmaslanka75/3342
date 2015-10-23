using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UtilitiesLibrary;
using System.Data;




namespace PracticeMidterm
{
    public partial class frmPractice : System.Web.UI.Page
    {
        DBConnect dbobj = new DBConnect();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateGridView();
 
            }
        }

        private void GenerateGridView()
        {
            string query = "SELECT * FROM Cars";
            gvPractice.DataSource = dbobj.GetDataSet(query);
            gvPractice.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GenerateGridView();
        }
    }
}