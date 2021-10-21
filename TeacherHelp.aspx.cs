using System;
using System.Data.SqlClient;

namespace RegLog
{
    public partial class TeacherHelp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Teachlogin"] == null)
            {
                result.ForeColor = System.Drawing.Color.Red;
                result.Text = "Please Login";
                rollno.Visible = false;
                subject.Visible = false;
                idname.Visible = false;
                incrementbtn.Visible = false;
                decrementbtn.Visible = false;
                title.InnerText = "ERROR";
                Response.Redirect("TeacherLogin.aspx");
            }
            else if (Session["Teachlogin"].ToString() == "1")
            {
              
            }
        }

        protected void increment(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=True");
            con.Open();
            string strSelect = "Update " + idname.Text + ""+iyear.Text+" SET " + subject.Text + "=" + subject.Text + "+1 where rollno = '" + rollno.Text + "' ";
            SqlCommand update = new SqlCommand(strSelect, con);
            update.ExecuteNonQuery();
            result.ForeColor = System.Drawing.Color.Green;
            result.Text = "Attendance Incremented";
            con.Close();
        }
        protected void decrement(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=True");
            con.Open();
            string strSelect = "Update " + idname.Text + "" + iyear.Text + " SET " + subject.Text + "=" + subject.Text + "-1 where rollno = '" + rollno.Text + "' ";
            SqlCommand update = new SqlCommand(strSelect, con);
            update.ExecuteNonQuery();
            result.ForeColor = System.Drawing.Color.YellowGreen;
            result.Text = "Attendance Decremented";
            con.Close();


        }
    }
}