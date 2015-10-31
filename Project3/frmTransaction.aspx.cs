using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project3
{
    public partial class frmTransaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtCSV_TextChanged(object sender, EventArgs e)
        {
            txtCSV.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           string Name = txtNameOnCard.Text;
           float cardNumber = float.Parse(txtCardNumber.Text);
           int CSV = int.Parse(txtCSV.Text);
           int expMonth = int.Parse(ddlExpMonth.SelectedValue);
           int expYear = int.Parse(ddlExpYear.SelectedValue);
           double transactionAmt = double.Parse(txtAmount.Text);

           if (!Name.Equals(""))
           {
 
           }
            

        }
    }
}