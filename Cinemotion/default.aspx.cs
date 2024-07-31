using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
//username: riya_patel & password: riya#04

namespace Cinemotion
{
    public partial class _default : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand command;
        SqlDataAdapter dataAdapter;
        SqlDataReader dataReader;

        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\rp009\OneDrive\Desktop\Cinemotion\App_Data\movies.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(connectionString);
                conn.Open();
                string sql = "SELECT * FROM movies";
                command = new SqlCommand(sql, conn);//command object with sql and connection as parameters
                dataAdapter = new SqlDataAdapter();
                dataAdapter.SelectCommand = command;
                DataSet ds = new DataSet();//dataset object is created 
                dataAdapter.Fill(ds);
                GridView1.DataSource = ds;//Set the DataSource property of the GridView to the filled DataSet
                GridView1.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
                lblError.Text = "An error has occured:" + ex.Message;
            }

        }

        protected void btnBookTicket_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookTicket.aspx");
        }

        protected void btnStaffLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("staffLogin.aspx");
        }
    }
}