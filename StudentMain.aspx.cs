using System;
using System.Data.SqlClient;

namespace RegLog
{
    public partial class StudentMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=True");

            con.Open();
            string checker = "";

            // string strSelect = "Select * from " + Session["module"] + " where uname='" + Session["username"] + "'";
            string strSelect = "Select * from TeacherData where code='" + code.Text + "'";
            SqlCommand cmd = new SqlCommand(strSelect, con);

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                checker = reader["subject"].ToString();
            }
            else
            {
                checker = "$2a$12$tfKKl5WUf0JyKJ6vQXdlseSSBDRYxzdM4C9RjE8zJgjjjjjjjjjjZbesrLspbzO";
            }
#pragma warning disable CS0103 // The name 'ipass' does not exist in the current context
            reader.Close();
            con.Close();

            int test = 0;
            if(subject.Text == checker)
            {
                test = 1;
            }
#pragma warning restore CS0103 // The name 'ipass' does not exist in the current context
            if (test==1)
            {
                con.Open();
                string codeForm = "Update "+Session["module"]+" SET "+subject.Text+ "=" + subject.Text + "+1,login=1 where uname = '" + Session["username"] + "' AND login=0";
                SqlCommand update = new SqlCommand(codeForm, con);
                update.ExecuteNonQuery();
                result.ForeColor = System.Drawing.Color.Green;
                result.Text = "Attendance Marked";
                con.Close();
                con.Open();
                string codeForm1 = "Update TeacherData SET module ='" + Session["module"] + "' where code = '" + code.Text + "' AND subject='"+ subject.Text + "'";
                SqlCommand teachUpdate = new SqlCommand(codeForm1, con);
                teachUpdate.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                result.ForeColor = System.Drawing.Color.Red;
                result.Text = "Code/Subject invalid";
            }

            reader.Close();
            


        }
    }
}