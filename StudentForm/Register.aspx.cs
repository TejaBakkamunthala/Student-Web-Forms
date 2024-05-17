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
    public partial class StudentFormm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string connectionString = @"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True";

        protected void StudentRegistration(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);


            conn.Open();
                string image = "";
                if (img1.Checked)
                {
                    image = Image1.ImageUrl;
                }
                else if (img2.Checked)
                {
                    image = Image2.ImageUrl;
                }
                else if (img3.Checked)
                {
                    image = Image3.ImageUrl;
                }
                else
                {
                    image = Image4.ImageUrl;
                }

                SqlCommand cmd = new SqlCommand("Student_Registration", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("StudentId", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Images", image);
                cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@PhoneNumber", TextBox4.Text);
                cmd.Parameters.AddWithValue("Address", TextBox5.Text);
                cmd.Parameters.AddWithValue("@DateOfJoining", TextBox6.Text);
                cmd.Parameters.AddWithValue("@Branches", DropDownList1.SelectedValue);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Inserted');", true);
                conn.Close();


        }

        protected void HomePage_Button(object sender, EventArgs e)
            {
             Response.Redirect("Default.aspx");
 
            }

        protected void GetAllStudentss(object sender, EventArgs e)
        {
        Response.Redirect("GetAllStudents.aspx");
        }

        

        protected void Update_Button(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);


            conn.Open();
            string image = "";
            if (img1.Checked)
            {
                image = Image1.ImageUrl;
            }
            else if (img2.Checked)
            {
                image = Image2.ImageUrl;
            }
            else if (img3.Checked)
            {
                image = Image3.ImageUrl;
            }
            else
            {
                image = Image4.ImageUrl;
            }

            SqlCommand cmd = new SqlCommand("UPDATE_STUDENT", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("StudentId", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Images", image);
            cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", TextBox4.Text);
            cmd.Parameters.AddWithValue("Address", TextBox5.Text);
            cmd.Parameters.AddWithValue("@DateOfJoining",TextBox6.Text);
            cmd.Parameters.AddWithValue("@Branches", DropDownList1.SelectedValue);
            cmd.ExecuteNonQuery();

            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Updated');", true);
            Response.Redirect("UpdateStudent.aspx");
        }



        protected void Delete_Button(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);

            int studentId = int.Parse(TextBox1.Text);

            conn.Open();
            SqlCommand co = new SqlCommand(" DELETE_STUDENT '" + studentId + "'", conn);
            co.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Deleted');", true);
            
        }

        protected void Login_Button(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }

       

       
    }
}