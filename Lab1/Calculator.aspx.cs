using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Lab1
{
    public partial class CalculatorWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class Calculator
        {
            // Square function 
            public int Square(int num)
            {
                return num * num;
            }


            // Add function
            public double Add(double num1, double num2)
            {
                return num1 + num2;
            }

            // Multiply
            public double Multiply(double num1, double num2)
            {
                return num1 * num2;
            }

            // Subtracts small number from big number
            public double Subtract(int num1, int num2)
            {
                if (num1 > num2)
                    return num1 - num2;

                else
                    return num2 - num1;
            }
        }//end of calculator class

        protected void Button_Click(object sender, EventArgs e)
        {
           
        }




       
    }


   


}