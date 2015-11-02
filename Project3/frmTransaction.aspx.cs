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
           //data fields
           string name =  txtNameOnCard.Text;
           float cardNumber;
           int CSV;
           int expMonth;
           int expYear;

           //conditions
           bool validCardNumber = float.TryParse(txtCardNumber.Text,out cardNumber);
           bool validCSV = int.TryParse(txtCSV.Text, out CSV);
           bool validExpMonth = int.TryParse(ddlExpMonth.SelectedValue, out expMonth);
           bool validExpYear = int.TryParse(ddlExpYear.SelectedValue, out expYear);

           if (validCardNumber && validExpMonth && validExpYear && validCSV)
           {
               cardNumber = float.Parse(txtCardNumber.Text);
               expMonth = Int32.Parse(ddlExpMonth.SelectedValue);
               expYear = Int32.Parse(ddlExpYear.SelectedValue);
               CSV = Int32.Parse(txtCSV.Text);
               Application.Lock();
               {
                   //pass amount
                   //return value to determine if it was successful

               }//end of Application.Lock()
               CreditCardWSRef.CreditCardWS pxy = new CreditCardWSRef.CreditCardWS();
           }

        }//end of btnSubmit event
    }
}