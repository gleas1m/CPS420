using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Assignment8_9
{
    public partial class Sessions : System.Web.UI.Page
    {
        private string conStr = WebConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;
        string fName;
        string lName;
        string e_mail;
        string ph_num;
        string getDate;
        string getTime;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                BindTime();
            }

            fName = firstName.Text;
            lName = lastName.Text;
            e_mail = email.Text;
            ph_num = phNum.Text;
            getDate = sessDate.Text;
            getTime = sessTime.Text;
        }

        private void BindTime()
        {
            // Set the start time (00:00 means 12:00 AM)
            DateTime StartTime = DateTime.ParseExact("07:00", "HH:mm", null);
            // Set the end time (23:55 means 11:55 PM)
            DateTime EndTime = DateTime.ParseExact("19:00", "HH:mm", null);
            //(hour, min, sec) 15 min intervals set
            TimeSpan Interval = new TimeSpan(0, 15, 0);        
            sessTime.Items.Clear();
            while (StartTime <= EndTime)
            {
                sessTime.Items.Add(StartTime.ToShortTimeString());
                StartTime = StartTime.Add(Interval);
            }
            sessTime.Items.Insert(0, new ListItem("--Select--", "0"));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("INSERT INTO Clients (firstName, lastName, phNum, email, sessDate, sessTime) VALUES (@fName, @lName, @ph_num, @e_mail, @getDate, @getTime)", conn);
            cmd.Parameters.AddWithValue("@fName", firstName.Text);
            cmd.Parameters.AddWithValue("@lName", lastName.Text);
            cmd.Parameters.AddWithValue("@ph_num", phNum.Text);
            cmd.Parameters.AddWithValue("@e_mail", email.Text);
            cmd.Parameters.AddWithValue("@getDate", sessDate.Text);
            cmd.Parameters.AddWithValue("@getTime", sessTime.Text);
            //SqlDataReader readInfo;
            try
            {

                conn.Open();
                cmd.ExecuteNonQuery();
                confirm.Visible = true;

            }
            catch (Exception er)
            {
                Response.Write("<script language='javascript'>alert('ERROR');</script>");
                Response.Write(er.ToString());
            }
            finally
            {
                conn.Close();

            }
        }

    }
}