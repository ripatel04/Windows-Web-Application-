using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Cinemotion
{
    public partial class general : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand command;
        SqlDataAdapter dataAdapter;
        SqlDataReader dataReader;

        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\rp009\OneDrive\Desktop\Cinemotion\App_Data\movies.mdf;Integrated Security=True";

        public int id;
        public string title;
        public int releaseYear;
        public int duration;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(!IsPostBack)
            {
                BindDdl(); //this is a method
            }

            
            int.TryParse(txtReleaseYear.Text, out releaseYear);
            int.TryParse(txtDuration.Text, out duration);
            title = txtTitle.Text;
        }

        public void BindDdl()
        {
            try
            {
                //Populating the drop down list from the gridview to select the genre
                conn = new SqlConnection(connectionString);
                //ddlGenre.SelectedIndex = -1;
                conn.Open();
                String sql = "SELECT DISTINCT Genre FROM movies";
                command = new SqlCommand(sql, conn);
                dataAdapter = new SqlDataAdapter();
                dataAdapter.SelectCommand = command;
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds, "cool");
                ddlGenre.DataSource = ds.Tables["cool"];
                ddlGenre.DataTextField = "Genre";
                ddlGenre.DataValueField = "Genre";
                ddlGenre.DataBind();
                conn.Close();

                //Populating the drop down list from the gridview to search
                conn = new SqlConnection(connectionString);
                conn.Open();
                String sql2 = "SELECT DISTINCT Genre FROM movies";
                command = new SqlCommand(sql2, conn);
                dataAdapter = new SqlDataAdapter();
                dataAdapter.SelectCommand = command;
                DataSet ds2 = new DataSet();
                dataAdapter.Fill(ds2, "cool");
                ddlGenreSearch.DataSource = ds2.Tables["cool"];
                ddlGenreSearch.DataTextField = "Genre";
                ddlGenreSearch.DataValueField = "Genre";
                ddlGenreSearch.DataBind();
                conn.Close();
                ddlGenre.SelectedIndex = -1;
            }
            catch (Exception ex)//try catch statement
            {
                lblError.Text = "An error has occured:" + ex.Message;
            }

        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                //Insert statement
                conn = new SqlConnection(connectionString);
                conn.Open();//open the database
                string sql_insert = $"INSERT INTO movies(title, genre, releaseYear, duration) VALUES ( '" + title + "', '" + ddlGenre.SelectedValue.ToString() + "', '" + releaseYear + "', '" + duration + "')";
                //string sql = "SELECT FROM AppUsers";
                command = new SqlCommand(sql_insert, conn);//Create a new SqlCommand with the insert statement and the SqlConnection
                dataAdapter = new SqlDataAdapter();
                dataAdapter.InsertCommand = command;
                dataAdapter.InsertCommand.ExecuteNonQuery();//Execute the insert command using ExecuteNonQuery method
                conn.Close();
                lblInsertSent.Text = "Inserted successfully!";

                txtID.Text = "";//clearing textboxes
                txtTitle.Text = "";
                txtReleaseYear.Text = "";
                txtDuration.Text = "";
                ddlGenre.ClearSelection();
            }
            catch (Exception ex)
            {
                lblError.Text = "An error has occured:" + ex.Message;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(connectionString);
                conn.Open();
                string sql_delete = "DELETE FROM movies WHERE duration = '" + duration + "'";//delete sql 
                SqlCommand command = new SqlCommand(sql_delete, conn);//Create a new SqlCommand with the delete statement and the SqlConnection
                SqlDataAdapter dataAdapter = new SqlDataAdapter();
                dataAdapter.DeleteCommand = command;
                dataAdapter.DeleteCommand.ExecuteNonQuery();//Execute the delete command using ExecuteNonQuery method
                conn.Close();//close the connection
                lblDeleteSent.Text = "Deleted successfully !";

                txtID.Text = "";//clearing textboxes
                txtTitle.Text = "";
                txtReleaseYear.Text = "";
                txtDuration.Text = "";
                ddlGenre.ClearSelection();

            }
            catch (Exception ex)
            {
                lblError.Text = "An error has occured:" + ex.Message;
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(connectionString);
                conn.Open();//Open the database
                string sql_update = "UPDATE movies SET duration = @user_duration WHERE title =@user_title";//update sql
                //string sql = "SELECT FROM AppUser";
                command = new SqlCommand(sql_update, conn);
                command.Parameters.AddWithValue("@user_duration", duration);// Set the parameter values using parameterized queries
                command.Parameters.AddWithValue("@user_title", title);
                command.ExecuteNonQuery();//Execute the update command using ExecuteNonQuery method
                conn.Close();
                lblUpdateSent.Text = "Updated successfully!";

                txtID.Text = "";//clearing textboxes
                txtTitle.Text = "";
                txtReleaseYear.Text = "";
                txtDuration.Text = "";
                ddlGenre.ClearSelection();
            }
            catch (Exception ex)
            {
                lblError.Text = "An error has occured:" + ex.Message;
            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(connectionString);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();// Open the database connection if it's not already open

                }
                string sql = "SELECT * FROM movies WHERE Genre ='" + ddlGenreSearch.SelectedItem.ToString() + "'";
                command = new SqlCommand(sql, conn);// Create a new SqlCommand with the SQL query and the SqlConnection
                dataAdapter = new SqlDataAdapter();
                dataAdapter.SelectCommand = command;// Set the SelectCommand of the SqlDataAdapter to the SqlCommand
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds);// Fill the DataSet with the results of the SQL query
                conn.Close();

                conn.Open();
                command = new SqlCommand(sql, conn);// Create a new SqlCommand with the SQL query and the SqlConnection
                dataReader = command.ExecuteReader();// Execute the SQL query and retrieve a SqlDataReader

                ListBox1.Items.Clear();//clearing the listbox
                while (dataReader.Read())
                {

                    string movieId = dataReader.GetValue(0).ToString(); // Read the data from the SqlDataReader
                    string movieTitle = dataReader.GetValue(1).ToString();
                    string movieGenre = dataReader.GetValue(2).ToString();
                    string movieReleaseYear = dataReader.GetValue(3).ToString();
                    string movieDuration = dataReader.GetValue(4).ToString();

                    string movieInfo = $"{movieId} - {movieTitle} ({movieReleaseYear}), Duration: {movieDuration} minutes";
                    ListBox1.Items.Add(movieInfo);// Add the movie information to the ListBox
                }

                conn.Close();
                

            }
            catch (Exception ex)
            {
                lblError.Text = "An error has occured:" + ex.Message;
            }
        }
    }
}