using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentForm
{
    public partial class StudentDetail : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Id"] != null && Session["Name"] != null)
                {
                    int StudentId = (int)Session["Id"];
                    string StudentName = (string)Session["Name"];

                    Get(StudentId, StudentName);



                    // You can fetch and display other user details as well if needed
                }
                else
                {
                    // Redirect the user to the login page if session variables are not set
                    Response.Redirect("Login.aspx");
                }
            }
        }

        public void Get(int StudentId, string StudentName)
        {
            string connectionString = @"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True";
            
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand co = new SqlCommand("Login_procedure '" + StudentId + "' , '" + StudentName + "' ", conn);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        protected void Update_Button(object sender, EventArgs e)
        {
            Response.Redirect("UpdateStudent.aspx");
        }
        protected void LogOut_Button(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

       

        protected void Delete_Button(object sender, EventArgs e)
        {
            Response.Redirect("DeleteStudent.aspx");
            
        }
    
}
}