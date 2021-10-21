using ClosedXML.Excel;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace RegLog
{
    public partial class TeacherMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Teachlogin"] == null)
            {
                codetext.Text = "ILLEGITIMATE ACCESSING ATTEMPT";
                subjectname.Text = "Please Login";
                clear.Visible = false;
                attendance.Visible = false;
                title.InnerText = "ERROR";
            }
            else if (Session["Teachlogin"].ToString() == "1")
            {
                codetext.Text = "Code: " + Session["code"].ToString();
                subjectname.Text = "Subject: " + Session["subject"].ToString();
            }
        }




        protected void clear_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=True");
            con.Open();
            string modulename = "";
            string modSelect = "Select * from TeacherData where code='" + Session["code"] + "' AND subject='" + Session["subject"] + "'";
          
            SqlCommand mod = new SqlCommand(modSelect, con);
            SqlDataReader reader1 = mod.ExecuteReader();
            if (reader1.Read())
            {
                modulename = reader1["module"].ToString();
               
                reader1.Close();
            }
            else
            {
                codetext.Text = "Class name error. pls contact XYZ";
                subjectname.Text = "";
                reader1.Close();
            }
            con.Close();
            con.Open();
            string codeForm = "Update TeacherData SET code=99999999, subject=NULL, module=NULL where uname = '" + Session["teachusername"] + "'";
            SqlCommand test = new SqlCommand(codeForm, con);
            test.ExecuteNonQuery();
            con.Close();
            con.Open();
            string codeForm1 = "Update "+modulename+" SET login=0";
            SqlCommand test1 = new SqlCommand(codeForm1, con);
            test1.ExecuteNonQuery();
            con.Close();
            Session.Contents.RemoveAll();
            Response.Redirect("TeacherLogin.aspx");


        }


        protected void ExportToExcel(object sender, EventArgs e)
        {
            DateTime localDate = DateTime.Now;
            SqlConnection con1 = new SqlConnection("Data Source=.;Integrated Security=True");
            con1.Open();
            string modulename = "";
            string modSelect = "Select * from TeacherData where uname = '" + Session["teachusername"] + "'";
            SqlCommand mod = new SqlCommand(modSelect, con1);
            SqlDataReader reader1 = mod.ExecuteReader();
            if (reader1.Read())
            {
                modulename = reader1["module"].ToString();

                reader1.Close();
            }
            using (SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT fname,lname,rollno,login FROM "+modulename+""))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            using (XLWorkbook wb = new XLWorkbook())
                            {
                                wb.Worksheets.Add(dt, "Products");

                                Response.Clear();
                                Response.Buffer = true;
                                Response.Charset = "";
                                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                                Response.AddHeader("content-disposition", "attachment;filename="+localDate+""+modulename+".xlsx");
                                using (MemoryStream MyMemoryStream = new MemoryStream())
                                {
                                    wb.SaveAs(MyMemoryStream);
                                    MyMemoryStream.WriteTo(Response.OutputStream);
                                    Response.Flush();
                                    Response.End();
                                }
                            }
                        }
                    }
                }
            }
        }

    }
}