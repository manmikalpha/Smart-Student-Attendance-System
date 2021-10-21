using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace RegLog
{
    
    public partial class StudentCheck : System.Web.UI.Page
    {
        public string[] strMyArray;
        public string[] strMyArray1;
        public int length;
        protected void Page_Load(object sender, EventArgs e)
            {
            List<string> list = new List<string>();
            List<string> list1 = new List<string>();
            SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=True");
            con.Open();
            string strInsert = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'"+Session["module"]+"'";
            SqlCommand cmd = new SqlCommand(strInsert, con);
            SqlDataReader mdr = cmd.ExecuteReader();
            
            
            while (mdr.Read())
            {
                list.Add(mdr.GetString(0));
            }
            con.Close();
            mdr.Close();


            con.Open();
            string strInsert1 = "SELECT * FROM " + Session["module"] + " WHERE uname = '" + Session["username"] + "'";
            SqlCommand cmd1 = new SqlCommand(strInsert1, con);
            SqlDataReader mdr1 = cmd1.ExecuteReader();
            length = list.Count;
            strMyArray = list.ToArray<string>();
            if (mdr1.Read())
            {
                for (int i = 0; i < length; i++)
                {
                    list1.Add(Convert.ToString(mdr1[i]));
                }
            }
            strMyArray1 = list1.ToArray<string>();



            con.Close();
            



            
            
            

        }
    }
}