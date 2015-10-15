using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UtilitiesLibrary
{
    public class DBConnect
    {
        String SqlConnectString = "server=cis-mssql1.temple.edu;Database=FA15_3342_tuc52228;User id=tuc52228;Password=aiXo6rac"; //at school
       //String SqlConnectString = "server=127.0.0.1,5555;Database=FA15_3342_tuc52228;User id=tuc52228;Password=aiXo6rac";  //at home
        SqlConnection myConnectionSql;
        SqlCommand objCmd;
        SqlDataReader objDataReader;
        DataSet ds;

        public DBConnect()
        {
            myConnectionSql = new SqlConnection(SqlConnectString);
            myConnectionSql.Open();

        }

        public DataSet GetDataSet(String SqlSelect)
        {
            // InParam is a Select statement. Return is the Dataset 
            // Note: The Dataset is also stored as a class variable for use 
            // in the getField function
            SqlDataAdapter myDataAdapter = new SqlDataAdapter(SqlSelect, myConnectionSql);
            DataSet myDataSet = new DataSet();
            myDataAdapter.Fill(myDataSet);
            ds = myDataSet;
            return myDataSet;
        }

        public DataSet GetDataSet(String SqlSelect, out int theRecordCount)
        {
            // InParam is a Select statement, OutParam is the number of rows 
            // in the returned dataset, Return is a Dataset
            SqlDataAdapter myDataAdapter = new SqlDataAdapter(SqlSelect, myConnectionSql);
            DataSet myDataSet = new DataSet();
            myDataAdapter.Fill(myDataSet);
            ds = myDataSet;
            theRecordCount = ds.Tables[0].Rows.Count;
            return myDataSet;
        }

        public DataSet GetDataSet(String SqlSelect, out int theRecordCount, out String theErrorMessage)
        {
            // InParam is a Select statement, OutParams are (1)the number of rows 
            // in the returned dataset. If an exception occurs it is zero, 
            // (2) the error message if an exception occurs.  
            // Returns a Dataset
            try
            {

                SqlDataAdapter myDataAdapter = new SqlDataAdapter(SqlSelect, myConnectionSql);
                DataSet myDataSet = new DataSet();
                myDataAdapter.Fill(myDataSet);
                ds = myDataSet;
                theRecordCount = ds.Tables[0].Rows.Count;
                theErrorMessage = "";
                return myDataSet;
            }
            catch (Exception ex)
            {
                theRecordCount = 0;
                theErrorMessage = ex.Message;
                return null;
            }
        }

        public SqlDataReader GetDataReader(String SqlSelect)
        {
            // InParam is a Select statement. Returns DataReader
            objCmd = new SqlCommand(SqlSelect, myConnectionSql);
            return objCmd.ExecuteReader();
        }


        public int DoUpdate(String SqlManipulate)
        {
            // InParam is a SQL manipulate statement (Insert, Update, Delete). 
            // Returns the number of rows affected by the update.
            // If an Exception occurs, -1 is returned
            objCmd = new SqlCommand(SqlManipulate, myConnectionSql);
            try
            {
                return objCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return -1;
            }
        }

        public int DoUpdateUsingCmdObj(SqlCommand theCommandObject)
        {
            // InParam is a Command object containing a SQL manipulate 
            // statement (Insert, Update, Delete). 
            // Returns the number of rows affected by the update.
            // If an Exception occurs, -1 is returned
            // This function is used for passing parameters to a Stored Procedure
            try
            {
                theCommandObject.Connection = myConnectionSql;
                return theCommandObject.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return -1;
            }
        }

        public DataSet GetDataSetUsingCmdObj(SqlCommand theCommand)
        {
            // Used for Stored Procedures (Select only) with Parameters
            theCommand.Connection = myConnectionSql;
            SqlDataAdapter myDataAdapter = new SqlDataAdapter(theCommand);
            DataSet myDataSet = new DataSet();
            myDataAdapter.Fill(myDataSet);
            ds = myDataSet;
            return myDataSet;
        }

        public DataRow GetRow(DataSet theDataSet, int theRow)
        {
            DataTable objTable = ds.Tables[0];
            DataRow objRow = objTable.Rows[theRow];
            return objRow;
        }

        public Array GetRows(String theCondition)
        {
            // InParams are (1) a DataSet and (2) the zero based row of the 
            // table in the DataSet to be returned.  Returns a row.
            DataRow[] objRow;
            DataTable objTable = ds.Tables[0];
            objRow = objTable.Select(theCondition);
            return objRow;
        }

        public Object GetField(String theFieldName, int theRow)
        {
            // InParams are (1) a Field (Column) name as a string and
            // (2) the zero based row of the table in the DataSet 
            // from which the field is to be extracted. Returns the value 
            // in the field as a variant type.
            // This function assumes that one of the getDataSet functions
            // had been called, thus producing a ds at the class level.
            DataTable objTable = ds.Tables[0];
            DataRow objRow = objTable.Rows[theRow];
            return objRow[theFieldName];
        }

        public void CommitDataSet(DataSet theDataSet)
        {
            // InParam is a DataSet. This function is used to Commit
            // the Dataset to the Data Source when updating a disconnected ds.
            
            SqlDataAdapter myDataAdapter = new SqlDataAdapter();
            myDataAdapter.Update(theDataSet);
        }

        public Object ExecuteScalarFunction(SqlCommand theCommand)
        {
            // InParam is a Command object containing a Select statement 
            // that returns a single scalar value. Returns the single scalar value.  
            // Returns  scalar value as a Variant Type.
            theCommand.Connection = myConnectionSql;
            return theCommand.ExecuteScalar();
        }

        public SqlConnection GetConnection()
        {
            // NOTE: .NET has implemented its Stored User Defined Functions only 
            // with the Managed Provider for SQL Server, 
            // not the OLEDB provider.
            return myConnectionSql;
        }

        public void CloseConnection()
        {
            myConnectionSql.Close();
        }

        public void ResetConnection()
        {
            myConnectionSql.Close();
            myConnectionSql.Open();
        }

        // The Deconstructor
        ~DBConnect()
        {
            // Close any open connections to the database before the objects of this class
            // are garbage collected.
            //myConnectionSql.Close();
        }

    }   // end class
}   // end namespace
