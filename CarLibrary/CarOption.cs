using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarLibrary
{
    public class CarOption
    {
        private string carDescription;
        private string packageDescription;
        private float price;
        private int totalQuantitySold;


        //Default Constructor
        public CarOption()
        {
            string carDescription = "";
            string packageDescription = "";
            float price = 0;
            int totalQuantitySold = 0;
        }

        //Getters and Setters
        public string CarDescription
        {
            get { return carDescription; }
            set { carDescription = value; }
        }

        public string PackageDescription
        {
            get {return packageDescription;}
            set {packageDescription =value;}
        }

        public float Price
        {
            get {return price;}
            set {price =value;}
        }

        public int TotalQuantitySold
        {
            get {return totalQuantitySold;}
            set {totalQuantitySold = value;}
        }



    }//end of CarOption class
}
