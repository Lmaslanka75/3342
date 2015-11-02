using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UtilitiesLibrary;
using System.Data;
using System.Data.SqlClient;

namespace Project3
{
    public partial class frmNewCard : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Add New Card into DB
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           //data fields
           string name =  txtNameOnCard.Text;
           float cardNumber = float.Parse(txtCardNumber.Text);
           int CSV = int.Parse(txtCSV.Text);
           int expMonth = int.Parse(ddlExpMonth.SelectedValue);
           int expYear = int.Parse(ddlExpYear.SelectedValue);

           CreditCardWSRef.CreditCardWS pxy = new CreditCardWSRef.CreditCardWS();
           pxy.AddCreditCardAccount(name, cardNumber, expMonth, expYear, CSV);

            

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmHome.aspx");
        }

        protected void txtCSV_TextChanged(object sender, EventArgs e)
        {
            txtCSV.Text = "";
        }
    }
}