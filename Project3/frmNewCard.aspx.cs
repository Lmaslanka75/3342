﻿using System;
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
            DBConnect objdb = new DBConnect();
           
           string name =  txtNameOnCard.Text;
           float cardNumber = float.Parse(txtCardNumber.Text);
           int CSV = int.Parse(txtCSV.Text);
           int expMonth = int.Parse(ddlExpMonth.SelectedValue);
           int expYear = int.Parse(ddlExpYear.SelectedValue);

           SqlCommand sqlCommand = new SqlCommand();
           sqlCommand.CommandType = CommandType.StoredProcedure;
           sqlCommand.CommandText = "AddNewCreditCard";
           sqlCommand.Parameters.AddWithValue("@Name", name);
           sqlCommand.Parameters.AddWithValue("@CardNumber", cardNumber);
           sqlCommand.Parameters.AddWithValue("@ExpMonth", expMonth);
           sqlCommand.Parameters.AddWithValue("@ExpYear",expYear);
           sqlCommand.Parameters.AddWithValue("@CSV",CSV);
           objdb.DoUpdateUsingCmdObj(sqlCommand);

            
        

        }
    }
}