using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomePage
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //button to redirect to page
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lab1/DBDemo.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lab1/Calculator.aspx");
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Project1/frmCarInput.aspx");
        }
    }
}