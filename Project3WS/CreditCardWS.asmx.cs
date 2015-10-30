using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using ObjectLibrary;
using UtilitiesLibrary;

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
        public void AddCreditCardAccount() 
        {

 
        }









    }//end of CreditCardClass

}//end of Namespace
