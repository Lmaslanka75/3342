using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project3
{
    public partial class frmPurchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {

           string name= txtName.Text;
           string address = txtAddress.Text;

            
            
            
            //Load the Credit Card Input Page
            Response.Redirect("frmTransaction");
        }
    }
}