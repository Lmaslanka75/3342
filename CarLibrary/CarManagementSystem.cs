using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UtilitiesLibrary;
using System.Data;

namespace CarLibrary
{
    public class CarManagementSystem
    {

//d.	The third class should contain functions that deal with processing the newly built car and any other operations that may be necessary:
//i.	You need one function that receives a Car object that represents a newly built car, 
//       and updates the TotalSales and TotalQuantitySold fields in the Cars table for the 
 //     specific Car Make and Model in the database. This function should also update the TotalQuantitySold field in the Packages table.
//ii.	One function that computes the TotalCost of a Car which is based on the Car object’s BasePrice (from the database) 
 //       and all the options added to the Car object.  

        DBConnect dbconnect = new DBConnect();   // database object
        
        //calculate total
        public float calculateTotal(Car car)
        {
            float totalPrice = car.BasePrice;
            foreach (CarOption carOption in car.Packages)
            {
                totalPrice += carOption.Price;
            }
            return totalPrice;
        }

        public void updateTotal(Car car)
        {
            string query = "SELECT * FROM Cars";
 
        }



        //default constructor
        public CarManagementSystem()
        { 
        }


    }
}
