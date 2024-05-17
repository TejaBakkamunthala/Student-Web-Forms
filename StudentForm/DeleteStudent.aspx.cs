using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentForm
{
    public partial class DeleteStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] !=null)
            {

                delete();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Deleted');", true);

                Response.Redirect("GetAllStudents.aspx");



            }


        }

        void delete()
        {
            string connectionString = @"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True";
            SqlConnection conn=new SqlConnection(connectionString);
           
            SqlCommand cmd=new SqlCommand("Delete_Student_By_Id", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            int Id =(int) Session["Id"];
            cmd.Parameters.AddWithValue("@StudentId", Id);
            conn.Open();
            cmd.ExecuteNonQuery();


        }




      
    }
}