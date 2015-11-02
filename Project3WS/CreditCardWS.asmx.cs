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



        //Method to add Credit card account into DB
        [WebMethod]
        public void AddCreditCardAccount(string name, float cardNumber, int expMonth, int expYear, int CSV) 
        {
            DBConnect objdb = new DBConnect();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "AddNewCreditCard";

            int creditCardID = getCreditCardCount() + 1;
            sqlCommand.Parameters.AddWithValue("@CreditCardID", creditCardID);
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
        public void Transaction(double transactionAmt)
        {
            //sqlcommand

            //if (Account < 0)
            //{ return error code 0
            //}
        }






    }//end of CreditCardClass

}//end of Namespace
