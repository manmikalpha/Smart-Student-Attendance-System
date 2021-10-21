using System;
using System.Data.SqlClient;

namespace RegLog
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=True");

            con.Open();
            string checker = "";
#pragma warning disable CS0103 // The name 'iuname' does not exist in the current context
            string strSelect = "Select * from StudentData where uname='" + iuname.Text + "'";
#pragma warning restore CS0103 // The name 'iuname' does not exist in the current context
            SqlCommand cmd = new SqlCommand(strSelect, con);

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                checker = reader["pass"].ToString();
            }
            else
            {
                checker = "$2a$12$tfKKl5WUf0JyKJ6vQXdlseSSBDRYxzjjjjjjjjjjjjjjjjjdM4C9RjE8zJgZbesrLspbzO";
            }
            reader.Close();
            con.Close();
            bool verified = BCrypt.Net.BCrypt.Verify(ipass.Text, checker);

            if (verified)
            {
                con.Open();
                string module = "";
                string modSelect = "Select * from StudentData where uname='" + iuname.Text + "'";
                SqlCommand mod = new SqlCommand(modSelect, con);
                SqlDataReader reader1 = mod.ExecuteReader();
                if (reader1.Read())
                {
                    module = reader1["module"].ToString();
                }
                else
                {
                    result.Text = "DB Error. Contact XYZ for further information.";
                }
                result.ForeColor = System.Drawing.Color.Green;
                result.Text = "Login Successful";
                Session["login"] = 1;
                Session["username"] = iuname.Text;
                Session["module"] = module;
                Response.Redirect("StudentMain.aspx");
                
            }
            else
            {
                result.ForeColor = System.Drawing.Color.Red;
                result.Text = "Invalid Username or Password";
            }

            reader.Close();
            con.Close();


        }
    }
}