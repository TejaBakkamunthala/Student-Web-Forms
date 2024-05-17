using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentForm
{
    public partial class SortedStudentsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SortedStudentssList();
            }

        }

        public void SortedStudentssList()
        {

            SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SortedListOfStudents", conn);
            SqlDataAdapter sda=new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void HomePage_Button(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");

        }
    }
}