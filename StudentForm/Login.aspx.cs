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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string connectionString = @"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True;";
        protected void Login_Button(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(connectionString);
                {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Login_procedure", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    int Id = int.Parse(TextBox1.Text);
                    string Name = TextBox2.Text;
                    cmd.Parameters.AddWithValue("@StudentId", Id);
                    cmd.Parameters.AddWithValue("@Name", Name);
                    cmd.ExecuteNonQuery();
                    SqlDataReader dataReader = cmd.ExecuteReader();
                    while (dataReader.Read())
                    {
                        Session["Id"] = dataReader["StudentId"];
                        Session["Name"] = dataReader["Name"];
                    }
                    if (Id.Equals(Session["Id"]) && Name.Equals(Session["Name"]))
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login Successfully');", true);
                        Response.Redirect("StudentDetail.aspx");

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login failed');", true);
                        Response.Redirect("Register.aspx");

                    }
                }



            }

        protected void Register_Button(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");


        }
    }
}