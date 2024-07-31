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
    public partial class bookTicket : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand command;
        SqlDataAdapter dataAdapter;
        SqlDataReader dataReader;

        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\rp009\OneDrive\Desktop\Cinemotion\App_Data\movies.mdf;Integrated Security=True";

        private DateTime theDate;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NameSurname"] != null && Session["Time"] != null)// Check if session variables "NameSurname" and "Time" are not null
            {
                string nameSurname = Session["NameSurname"].ToString();//Retrieve the values of session variables
                string time = Session["Time"].ToString();
            }
            if (!IsPostBack)
            { 
                Calendar1.SelectedDate = DateTime.Today;// Set the selected date of the Calendar control to today's date
            }
            else
            {
                theDate = Calendar1.SelectedDate; // Assign the selected date to the class-level theDate variable
            }

            if (!IsPostBack)
            {
                BindDdl2(); //this is a method
            }

        }
        public void BindDdl2()
        {
            try
            {
                conn = new SqlConnection(connectionString);
                //ddlGenre.SelectedIndex = -1;
                conn.Open();
                String sql = "SELECT DISTINCT Title FROM movies";
                command = new SqlCommand(sql, conn);
                dataAdapter = new SqlDataAdapter();
                dataAdapter.SelectCommand = command;
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds, "cools");
                ddlTitle.DataSource = ds.Tables["cools"];
                ddlTitle.DataTextField = "Title";
                ddlTitle.DataValueField = "Title";
                ddlTitle.DataBind();
                conn.Close();
            }
            catch(Exception ex)
            {
                lblError.Text = "An error has occured:" + ex.Message;
            }
            
        }
        protected void btnBook_Click(object sender, EventArgs e)
        {
            try
            {
                if (theDate <= DateTime.Today)
                {
                    lblFeedback.Text = "Invalid date selection. Please choose a future date!";
                }
                else
                {
                    if (btnEleven.Enabled == false)
                    {
                        Session["Time"] = "11:00";
                    }
                    else if (btnTwo.Enabled == false)
                    {
                        Session["Time"] = "14:00";
                    }
                    else if (btnSix.Enabled == false)
                    {
                        Session["Time"] = "18:00";
                    }
                    else
                    {
                        Session["Time"] = "22:00";
                    }

                    Session["NameSurname"] = txtNameSurname.Text;

                    string time = Session["Time"].ToString();
                    string nameSurname = Session["NameSurname"].ToString();

                    if (rdoOne.Checked)
                    {
                        lblFeedback.Text = nameSurname + " you have successfully booked 1 ticket for : " + ddlTitle.SelectedItem.ToString() + " at " + time + " on " + theDate.ToString("dd/MM/yyyy");
                    }
                    else if (rdoTwo.Checked)
                    {
                        lblFeedback.Text = nameSurname + " you have successfully booked 2 tickets for : " + ddlTitle.SelectedItem.ToString() + " at " + time + " on " + theDate.ToString("dd/MM/yyyy");
                    }
                    else if (rdoThree.Checked)
                    {
                        lblFeedback.Text = nameSurname + " you have successfully booked 3 tickets for : " + ddlTitle.SelectedItem.ToString() + " at " + time + " on " + theDate.ToString("dd/MM/yyyy");
                    }
                    else if (rdoFour.Checked)
                    {
                        lblFeedback.Text = nameSurname + " you have successfully booked 4 tickets for : " + ddlTitle.SelectedItem.ToString() + " at " + time + " on " + theDate.ToString("dd/MM/yyyy");
                    }
                    else
                    {
                        lblFeedback.Text = nameSurname + " you have successfully booked 5 tickets for : " + ddlTitle.SelectedItem.ToString() + " at " + time + " on " + theDate.ToString("dd/MM/yyyy");
                    }
                }
                txtNameSurname.Text = "";//clearing the contents 
                rdoFive.Checked = false;
                rdoOne.Checked = false;
                rdoTwo.Checked = false;
                rdoThree.Checked = false;
                rdoFour.Checked = false;
                lblFeedback.Focus();//focus must be to the label once book btn is clicked
            

            }
            catch (Exception ex)
            {
                lblError.Text = "An error has occured:" + ex.Message;
            }

        }

        protected void btnEleven_Click(object sender, EventArgs e)
        {
            btnEleven.Enabled = false;// Disable the relevant buttons
        }

        protected void btnTwo_Click(object sender, EventArgs e)
        {
            btnTwo.Enabled = false;
        }

        protected void btnSix_Click(object sender, EventArgs e)
        {
            btnSix.Enabled = false;// Disable the relevant buttons
        }

        protected void btnTen_Click(object sender, EventArgs e)
        {
            btnTen.Enabled = false;//Disable the relevant buttons
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            theDate = Calendar1.SelectedDate;//obtaining the date that the user selects 

            //theDate = Calendar1.SelectedDate; // Assign the selected date to theDate variable

            //Calendar1.VisibleDate = theDate;// Update the SelectedDate property of the Calendar control
        }
    }
}