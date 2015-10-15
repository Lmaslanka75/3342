using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UtilitiesLibrary;
using System.Data;
using CarLibrary;

namespace Project1
{
    public partial class frmCarInput : System.Web.UI.Page
    {
        // i.	First column displays the PackageDescription coming from the database.
        //ii.	Second column displays the Price of the Package.
        //iii.	Third column contains a button to add the Package to the car that is being built.
        //(This button should be disabled after it’s clicked, so the user cannot click it twice.)


        DBConnect dbObj = new DBConnect();
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                string carQuery = "SELECT DISTINCT CarMake FROM Cars";
                ddlMakes.DataSource = dbObj.GetDataSet(carQuery);
                ddlMakes.DataTextField = "CarMake";
                ddlMakes.DataBind();

            }

        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {

        }


        public void GenerateCarList()
        {

            string packagesQuery = "SELECT * FROM Packages";            //query
            DataSet myDataSet = dbObj.GetDataSet(packagesQuery);        //create data set 
            gvCarResults.DataSource = myDataSet;                        //set grid view data source to mydataset
            gvCarResults.DataBind();                                    //databind

    
            //gvCarResults.DataTextField = "PackageDescription";
            //Packages.DataTextField = "Price";
           // gvCarResults.DataSource = dbObj.GetDataSet(packagesQuery);
            //gvCarResults.DataBind();

           //ddlMakes.DataSource = 
 
        }
        protected void ddlMakes_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedMake = ddlMakes.SelectedValue;
            string carModel = "SELECT * FROM Cars WHERE CarMake = '" + selectedMake + "'";
            ddlModels.DataSource = dbObj.GetDataSet(carModel);
            ddlModels.DataTextField = "CarModel";
            ddlModels.DataValueField = "CarID";
            ddlModels.DataBind();

        }

        protected void ddlModels_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            //string errorMessage = lblErrorLabel.Text;
             string fullname = txtFullName.Text;
             string addressLine1 = txtAddressln1.Text;
             string city = txtCity.Text;
             string state = txtState.Text;
             string zipCode = txtZipCode.Text;
             string country = txtCountry.Text;

            //Check that all of the user's info is not empty
             if (fullname.Equals("") || addressLine1.Equals("") || city.Equals("") || state.Equals("") || zipCode.Equals("") || country.Equals(""))
             {
                 lblErrorLabel.Text = "You must enter all of fields for your contact information";
                 return;
             }

             else 
             {
                 GenerateCarList();  //show gridview if all fields are filled out
                 
             }
                
            
            //get current value
            int selectedCarID = Convert.ToInt32(ddlModels.SelectedValue);


        }

        protected void gvCarResults_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string selectedModel = ddlModels.SelectedValue;
            string selectedDescription = gvCarResults.SelectedRow.Cells[0].Text;  //package description text
            string totalQuantSoldQuery = "SELECT TotalQuantitySold FROM Packages WHERE PackageDescription = '" + selectedDescription +  "'";
            DataSet totalQuantDataSet = dbObj.GetDataSet(totalQuantSoldQuery);

           // int selectedPackage = Convert.ToInt32(gvCarResults.SelectedRow.Cells[2]);
        }

        protected void TextBox9_TextChanged1(object sender, EventArgs e)
        {
            
        }


        protected void gvCarResults_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
        }


        //add to cart
        protected void gvCarResults_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string totalSalesQuery = "SELECT * FROM Cars WHERE CarModel = '" + ddlModels.SelectedItem + "'" ;
            DataSet dataset = dbObj.GetDataSet(totalSalesQuery);
            float totalSales = float.Parse(dataset.Tables[0].Rows[0]["TotalSales"].ToString());
            totalSales++;
            string updateTotalSales = "UPDATE Cars SET TotalSales = " + totalSales ;
            dbObj.DoUpdate(updateTotalSales);
            Car car = new Car(ddlMakes.SelectedValue, ddlModels.SelectedValue, txtColorPicker.Text, totalSales);
            // Put the values into the corresponding footer column
            gvCarResults.Columns[0].FooterText = "Total =";
           int valuee= int.Parse(e.CommandArgument.ToString());
            //gvCarResults.Rows[valuee].Cells[1].Text + car.BasePrice.ToString()
           
            string footerText = gvCarResults.Rows[valuee].Cells[1].Text + car.BasePrice.ToString();     //C2 formats as currency
            gvCarResults.Columns[1].FooterText = String.Format("{0:C}", footerText);
        }

    }//End of form class
}//end of namespace