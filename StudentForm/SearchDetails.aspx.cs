using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace StudentForm
{
    public partial class SearchDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_Button(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True;";
            SqlConnection conn = new SqlConnection(connectionString);

            int Id = int.Parse(TextBox1.Text);
            string Name = TextBox2.Text;
            conn.Open();
            SqlCommand cmd = new SqlCommand("searchByIdAndName", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentId", Id);
            cmd.Parameters.AddWithValue("@Name",Name);
            cmd.ExecuteNonQuery();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(reader);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                reader.Close();
            }
            else
            {
                Response.Redirect("Register.aspx");
            }
        }

        protected void HomePage_Button(object sender, EventArgs e)

        {
            Response.Redirect("Default.aspx");

        }
    }
}