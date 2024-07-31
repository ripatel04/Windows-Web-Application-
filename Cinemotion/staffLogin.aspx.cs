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
    public partial class staffLogin : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand command;
        SqlDataAdapter dataAdapter;
        SqlDataReader dataReader;

        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\rp009\OneDrive\Desktop\Cinemotion\App_Data\movies.mdf;Integrated Security=True";
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtUsername.Text == "riya_patel" && txtPassword.Text == "riya#04")
                {
                    conn = new SqlConnection(connectionString);
                    conn.Open();
                    string sql = "SELECT * FROM [movies]";
                    command = new SqlCommand(sql, conn);
                    dataReader = command.ExecuteReader();//dataReader to format yr record in db
                    while (dataReader.Read())
                    {
                        HttpCookie _userCreds = new HttpCookie("userInfo");//userInfo is the name of the cookie
                        _userCreds["username"] = txtUsername.Text;//store username, password and email to the cookie
                        _userCreds["password"] = txtPassword.Text;
                        _userCreds["email"] = txtEmail.Text;
                        Response.Cookies.Add(_userCreds);//add the cookie in the response, it adds the part to the browser, u add the cookie in the object called _usercreds and in that u have userInfo
                        Response.Redirect("general.aspx");//redirect to the shopping page, instruction to the broswer

                    }
                }
                else
                {

                    lblOutput.Text = "Invalid credentials. Please try again.";// Display error message
                }
            }
            catch (Exception ex)//try catch statement
            {
                lblError.Text = "An error has occured:" + ex.Message;
            }



        }
    }
}