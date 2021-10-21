using System;
using System.Data.SqlClient;

namespace RegLog
{
    public partial class TeacherLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var rand = new Random();
            SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=True");

            con.Open();
            string checker = "";
            string strInsert = "Select * from TeacherData where uname='" + iuname.Text + "'";
            SqlCommand cmd = new SqlCommand(strInsert, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                checker = reader["pass"].ToString();
            }
            else
            {
                checker = "$2a$12$tfKKl5WUf0JyKJ6vQXdlseSSBDRYxzjjjjjjjjjjjjjjjjdM4C9RjE8zJgZbesrLspbzO";
            }
            bool verified = BCrypt.Net.BCrypt.Verify(ipass.Text, checker);
            if (verified)
            {
                con.Close();
                con.Open();
                int count = rand.Next(100000, 999999);
                string codeForm = "Update TeacherData SET code='" + count + "' where uname = '" + iuname.Text + "'";
                SqlCommand test = new SqlCommand(codeForm, con);
                test.ExecuteNonQuery();
                result.ForeColor = System.Drawing.Color.Green;
                result.Text = "Login Successful";
                Session["code"] = count;
                Session["Teachlogin"] = 1;
                Session["teachusername"] = iuname.Text;
                Session["subject"] = subject.Text;
                con.Close();
                con.Open();
                string codeForm1 = "Update TeacherData SET subject='" + subject.Text + "' where uname = '" + iuname.Text + "'";
                SqlCommand test1 = new SqlCommand(codeForm1, con);
                test1.ExecuteNonQuery();
                con.Close();
                Response.Redirect("TeacherMain.aspx");
            }
            else
            {
                result.ForeColor = System.Drawing.Color.Red;
                result.Text = "Invalid Username or Password";

            }

            reader.Close();
            con.Close();


        }

        protected void iuname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ipass_TextChanged(object sender, EventArgs e)
        {

        }


    }
}