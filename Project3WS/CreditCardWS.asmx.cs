using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using ObjectLibrary;
using UtilitiesLibrary;
using System.Data;
using System.Data.SqlClient;

namespace Project3WS
{
    /// <summary>
    /// Summary description for CreditCardWS
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CreditCardWS : System.Web.Services.WebService
    {
       

        [WebMethod]
        public void AddCustomer(Customer customer)
        {
            DBConnect objdb = new DBConnect();

            string insertCustSQL = "INSERT INTO CUSTOMER (FirstName, LastName, Address, City, State, Zipcode)"
            + "VALUES ('" + customer.FirstName + "','" + customer.LastName + "','" + customer.Address + "','" + customer.City + "','" + customer.State + "','" + customer.Zipcode + "')'";

            objdb.DoUpdate(insertCustSQL);

        }



        //Method to add Credit card account to Account Table
        [WebMethod]
        public void AddCreditCardAccount(string name, float cardNumber, int expMonth, int expYear, int CSV) 
        {
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "AddNewCreditCard";
            //Values to go into Account Table
            sqlCommand.Parameters.AddWithValue("@Name", name);
            sqlCommand.Parameters.AddWithValue("@CardNumber", cardNumber);
            sqlCommand.Parameters.AddWithValue("@ExpMonth", expMonth);
            sqlCommand.Parameters.AddWithValue("@ExpYear", expYear);
            sqlCommand.Parameters.AddWithValue("@CSV", CSV);
            objdb.DoUpdateUsingCmdObj(sqlCommand);
        }

        [WebMethod]
        public int getCreditCardCount()
        {
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "GetCreditCardCount";

            //stores the value in the variable @theCount
            SqlParameter returnParameter = new SqlParameter("@theCount", DbType.Int32);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            sqlCommand.Parameters.Add(returnParameter);

            // Execute stored procedure using DBConnect object and the SQLCommand object
            objdb.GetDataSetUsingCmdObj(sqlCommand);

            int count;
            count = int.Parse(sqlCommand.Parameters["@theCount"].Value.ToString());
            return count;

        } //end of getCreditCardCount method


        [WebMethod]
        public int Transaction(string name, float cardNumber,int expMonth, int expYear, int CSV, double transactionAmt)
        {
            int returnval;
            //get Account Balance
            decimal balance = getAccountBalance(name, cardNumber);
            decimal transaction = decimal.Parse(transactionAmt.ToString());  

            //if balance is greater than transaction amount, do the transaction
            if (balance > transaction)
            {
                //Update Account balance using stored procedure 
                DBConnect objdb = new DBConnect();
                SqlCommand sqlCommand = new SqlCommand();
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.CommandText = "UpdateAccountBalance";
                sqlCommand.Parameters.AddWithValue("@CardNumber", cardNumber);
                sqlCommand.Parameters.AddWithValue("@TransactionAmount", transactionAmt);
                objdb.DoUpdateUsingCmdObj(sqlCommand);  //execute update

                //create a log of the transaction
                addTransactionLog(name, cardNumber, expMonth, expYear, CSV, balance, transaction);
                returnval = 0;
            }

            else 
            {
                returnval = 1;
            }

            return returnval;
        }//end of transaction method



        //method to get account balance
        [WebMethod]
        public decimal getAccountBalance(string name, float cardNumber)
        {
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "GetAccountBalance";
            sqlCommand.Parameters.AddWithValue("@Name", name);
            sqlCommand.Parameters.AddWithValue("@CardNumber", cardNumber);

            SqlParameter returnParameter = new SqlParameter("@Balance", DbType.Decimal);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            sqlCommand.Parameters.Add(returnParameter);

            // Execute stored procedure using DBConnect object and the SQLCommand object
            objdb.GetDataSetUsingCmdObj(sqlCommand);

            decimal balance;
            balance = decimal.Parse(sqlCommand.Parameters["@Balance"].Value.ToString());
            return balance;

        }//end of getAccountBalance method


        //method to insert transaction log into CreditCard TAble
        [WebMethod]
        public void addTransactionLog(string name, float cardNumber, int expMonth, int expYear, int CSV, decimal balance, decimal transactionAmt ) 
        {
            // stored procedure "AddTransactionLog"
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "AddTransactionLog";
            sqlCommand.Parameters.AddWithValue("@Name", name);
            sqlCommand.Parameters.AddWithValue("@CardNumber", cardNumber);
            sqlCommand.Parameters.AddWithValue("@ExpMonth", expMonth);
            sqlCommand.Parameters.AddWithValue("@ExpYear", expYear);
            sqlCommand.Parameters.AddWithValue("@CSV", CSV);
            sqlCommand.Parameters.AddWithValue("@Balance", balance);
            sqlCommand.Parameters.AddWithValue("@TransactionAmount", transactionAmt);

            objdb.DoUpdateUsingCmdObj(sqlCommand);

        }//end of doTransaction() method

        [WebMethod]
        public DataSet GetAccounts()
        {
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "GetAllAccounts";
            DataSet dataset = objdb.GetDataSetUsingCmdObj(sqlCommand);
            return dataset;
        }

        [WebMethod]
        public void updateName(string name, int AccountID)
        {
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "UpdateAccountName";
            sqlCommand.Parameters.AddWithValue("@Name", name);
            sqlCommand.Parameters.AddWithValue("@AccountID", AccountID);
            objdb.DoUpdateUsingCmdObj(sqlCommand);
        }

        [WebMethod]
        public void updateCardNumber(float cardNumber, int AccountID)
        {
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "UpdateCardNumber";
            sqlCommand.Parameters.AddWithValue("@CardNumber", cardNumber);
            sqlCommand.Parameters.AddWithValue("@AccountID", AccountID);
            objdb.DoUpdateUsingCmdObj(sqlCommand);
        }

        [WebMethod]
        public void UpdateExpMonth(int expMonth, int AccountID)
        {
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "UpdateExpMonth";
            sqlCommand.Parameters.AddWithValue("@ExpMonth", expMonth);
            sqlCommand.Parameters.AddWithValue("@AccountID", AccountID);
            objdb.DoUpdateUsingCmdObj(sqlCommand);
        }

        [WebMethod]
        public void UpdateExpYear(int expYear, int AccountID)
        {
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "UpdateExpYear";
            sqlCommand.Parameters.AddWithValue("@ExpYear", expYear);
            sqlCommand.Parameters.AddWithValue("@AccountID", AccountID);
            objdb.DoUpdateUsingCmdObj(sqlCommand);
        }

        [WebMethod]
        public void UpdateCSV(int CSV, int AccountID)
        {
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "UpdateCSV";
            sqlCommand.Parameters.AddWithValue("@CSV", CSV);
            sqlCommand.Parameters.AddWithValue("@AccountID", AccountID);
            objdb.DoUpdateUsingCmdObj(sqlCommand);
        }
       
        
        [WebMethod]
        public DataSet getAllTransactions()
        {
            //Update Account balance using stored procedure 
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "GetAllTransactions";
            DataSet dataset = objdb.GetDataSetUsingCmdObj(sqlCommand);
            return dataset;

        }

    }//end of CreditCardClass

}//end of Namespace
