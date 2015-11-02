using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project3
{
    public partial class frmHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNewCard_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmNewCard.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnNewTransaction_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmTransaction.aspx");
        }

        protected void lnkbtnViewAllTransactions_Click(object sender, EventArgs e)
        {
            //load a gridview of transactions

        }
    }
}