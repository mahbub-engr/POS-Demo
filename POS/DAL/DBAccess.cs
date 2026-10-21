using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace POS.DAL
{
    public class DBAccess
    {
        private static SqlConnection sqlConnection;
        private static SqlDataAdapter sqlDataAdapter;
       
        private string name = "mahbub";
        private static void OpenConnection()
        {
            string conString = WebConfigurationManager.ConnectionStrings["DemoPOS"].ConnectionString;          

            try
            {
                if (sqlConnection == null)
                {
                    sqlConnection = new SqlConnection(conString);
                    sqlConnection.Open();
                }
                else
                {
                    if (sqlConnection.State != System.Data.ConnectionState.Open)
                    {
                        sqlConnection = new SqlConnection(conString);
                        sqlConnection.Open();
                    }
                }
            } catch
            {

            }
        }
        private static void CloseConnection()
        {
            try
            {
                if (sqlConnection == null)
                {
                    if (sqlConnection.State != System.Data.ConnectionState.Open)
                    {
                        sqlConnection.Close();
                        sqlConnection.Dispose();
                    }
                }
            }catch
            {

            }
        }
        public static DataTable FillDataTable(string query, DataTable table)
        {
            try
            {
                OpenConnection();
                sqlDataAdapter = new SqlDataAdapter(query,sqlConnection);
                sqlDataAdapter.Fill(table);
                sqlDataAdapter.Dispose();
                CloseConnection();
                return table;

            }
            catch {
                return null;
            }
        }
    }
}