using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarLibrary
{
    public class Car
    {
        string make;    //car brand
        string model;   //specific car model
        string year;    //year car was built
        string color;   //color of the car
        private float basePrice;
        private float totalSales;
        public static int IDCount = 0;
        private int carID;

        CarOption package = new CarOption();    //package object
        private List<Car> cars;                 //list of cars
        private List<CarOption> packages;       //list of packages

        //default constructor
        public Car()
        {
            this.make = "";
            this.model = "";
            this.year = "";
            this.color = "";
            this.totalSales = 0;
        }

        //full constructor
        public Car(string Make, string Model, string Color, float TotalSales)
        {
            IDCount++;
            this.make = Make;
            this.model = Model;
           
            this.color = Color;
            this.totalSales = TotalSales;
            CarID = IDCount;
        }

        public void addPackage(CarOption carOption)
        {
            packages.Add(carOption); 
        }
        public void removePackage(CarOption carOption)
        {
            packages.Remove(carOption);
        }

        //Getters and Setters
        public int CarID
        {
            get {return carID;}
            set {carID = value;}
        }
        public float BasePrice
        {
            get { return basePrice; }
            set { basePrice = value; }
        }
        public float TotalSales
        {
            get { return totalSales; }
            set { totalSales = value; }
 
        }
        public List<CarOption> Packages
        {
            get { return packages; }
            set { packages = value; }
        }


    }//end of Car class


}//end of CarLibrary
