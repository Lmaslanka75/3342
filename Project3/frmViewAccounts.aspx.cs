using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project3
{
    public partial class frmViewAccounts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkbtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmHome.aspx");
        }

        protected void lnkbtnViewAllAccounts_Click(object sender, EventArgs e)
        {
            showAccounts();

        }

        protected void gvAccounts_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvAccounts.EditIndex = e.NewEditIndex;
            showAccounts();
 
        }

        protected void gvAccounts_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void gvAccounts_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int rowIndex = e.RowIndex;
            
            //get accountID value from textbox field
            int accountID = int.Parse(gvAccounts.Rows[rowIndex].Cells[1].Text);
            CreditCardWSRef.CreditCardWS pxy = new CreditCardWSRef.CreditCardWS();
  
            //string accountNumber = gvAccounts.Rows[rowIndex].Cells[1].Text;

            // Retrieve a reference to the TextBox in the row for the Name
            TextBox TBoxName;
            TBoxName = (TextBox)gvAccounts.Rows[rowIndex].Cells[2].Controls[0];
            string name = TBoxName.Text;
            pxy.updateName(name, accountID);

            // Retrieve a reference to the TextBox in the row for the CardNumber
            TextBox TBoxCardNum;
            TBoxCardNum = (TextBox)gvAccounts.Rows[rowIndex].Cells[3].Controls[0];
            float cardnum = float.Parse(TBoxCardNum.Text);
            pxy.updateCardNumber(cardnum, accountID);

            // Retrieve a reference to the TextBox in the row for the expMonth
             TextBox TBoxmonth;
            TBoxmonth = (TextBox)gvAccounts.Rows[rowIndex].Cells[4].Controls[0];
            int expMonth = int.Parse(TBoxmonth.Text);
            pxy.UpdateExpMonth(expMonth, accountID);


            // Retrieve a reference to the TextBox in the row for the expYear
            TextBox TBoxYear;
            TBoxYear = (TextBox)gvAccounts.Rows[rowIndex].Cells[5].Controls[0];
            int expYear = int.Parse(TBoxYear.Text);
            pxy.UpdateExpYear(expYear, accountID);

            // Retrieve a reference to the TextBox in the row for the CSV
            TextBox TBoxCSV;
            TBoxCSV = (TextBox)gvAccounts.Rows[rowIndex].Cells[6].Controls[0];
            int csv = int.Parse(TBoxCSV.Text);
            pxy.UpdateCSV(csv, accountID);

            gvAccounts.EditIndex = -1;
            showAccounts();




        }

        public void showAccounts()
        {
            CreditCardWSRef.CreditCardWS pxy = new CreditCardWSRef.CreditCardWS();
            DataSet ds = pxy.GetAccounts();
            gvAccounts.DataSource = ds;
            gvAccounts.DataBind();
 
        }

        protected void gvAccounts_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}