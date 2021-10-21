using System;
using System.Data.SqlClient;
using System.Diagnostics;


namespace RegLog
{
    public partial class Registeration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }




        protected void signup_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=True");

            con.Open();
            string strSelect = "Select * from StudentData where uname='" + iuname.Text + "'";
            SqlCommand cmd = new SqlCommand(strSelect, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                reader.Close();
                con.Close();
                result.ForeColor = System.Drawing.Color.Red;
                result.Text = "Username Already Taken";
            }
            else
            {
                reader.Close();
                con.Close();
                con.Open();
                string passwordHash = BCrypt.Net.BCrypt.HashPassword(ipassword.Text);
                string strInsert = "insert into StudentData values ('" + ifname.Text + "','" + ilname.Text + "','" + ienum.Text + "','" + idname.Text + "','" + irnum.Text + "','" + iuname.Text + "','" + passwordHash + "','" + iyear.Text + "','" + idname.Text + "" + iyear.Text + "')";
                SqlCommand cmd1 = new SqlCommand(strInsert, con);
                cmd1.ExecuteNonQuery();
                con.Close();
                con.Open();
                string depInsert = "insert into " + idname.Text + "" + iyear.Text + " (fname, lname, rollno, uname) values ('" + ifname.Text + "','" + ilname.Text + "','" + irnum.Text + "','" + iuname.Text + "')";
                SqlCommand cmd2 = new SqlCommand(depInsert, con);
                cmd2.ExecuteNonQuery();
                con.Close();
                result.Text = "Account Created !";
                Debug.Write("Success");
                result.ForeColor = System.Drawing.Color.Green;


            }



        }
    }
}