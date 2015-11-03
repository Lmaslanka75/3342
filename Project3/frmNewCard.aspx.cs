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
               CreditCardWSRef.CreditCardWS pxy = new CreditCardWSRef.CreditCardWS();
               pxy.AddCreditCardAccount(name, cardNumber, expMonth, expYear, CSV);
           }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmHome.aspx");
        }

        protected void txtCSV_TextChanged(object sender, EventArgs e)
        {
            txtCSV.Text = "";
        }

        protected void txtCSV_MouseEntered()
        {
 
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmHome.aspx");
        }
    }
}