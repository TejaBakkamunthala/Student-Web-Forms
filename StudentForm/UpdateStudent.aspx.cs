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
    public partial class UpdateStudent : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Id"] != null)
                {
                    Get();

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }


        void Get()
        {

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                // SqlCommand cmd = new SqlCommand("StudentUpdateByName", conn);
                 SqlCommand cmd = new SqlCommand("UpdateStudentByStudentId", conn);

                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                string StudentID = Session["Id"].ToString();
                cmd.Parameters.AddWithValue("@StudentId", StudentID);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    TextBox1.Text = sdr["StudentId"].ToString();
                    TextBox2.Text = (string)sdr["Name"];

                    RadioButtonList1.Text = (string)sdr["Gender"];
                    TextBox3.Text = (string)sdr["Email"];
                    TextBox4.Text = (string)sdr["PhoneNumber"];
                    TextBox5.Text = (string)sdr["Address"];
                    TextBox6.Text = ((DateTime)sdr["DateOfJoining"]).ToString("yyyy-MM-dd"); // Adjust format as needed


                    DropDownList1.Text = (string)sdr["Branches"];
                }
                
            }
        }

        


        string connectionString = @"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True";

        protected void Update_Button(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("UPDATE_STUDENT", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                int Id = (int)Session["Id"];
                string Name = TextBox1.Text;
                string ProfileImage = "";
                if (img1.Checked)
                {
                    ProfileImage = Image1.ImageUrl;
                }
                if (img2.Checked)
                {
                    ProfileImage = Image2.ImageUrl;
                }
                if (img3.Checked)
                {
                    ProfileImage = Image3.ImageUrl;
                }
                if (img4.Checked)
                {
                    ProfileImage = Image4.ImageUrl;
                }


                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("StudentId", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Images", ProfileImage);
                cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@PhoneNumber", TextBox4.Text);
                cmd.Parameters.AddWithValue("Address", TextBox5.Text);
                cmd.Parameters.AddWithValue("@DateOfJoining", TextBox6.Text);
                cmd.Parameters.AddWithValue("@Branches", DropDownList1.SelectedValue);
                cmd.ExecuteNonQuery();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Updated');", true);
                Response.Redirect("GetAllStudents.aspx");


            }
        }

        protected void HomePage_Button(object sender, EventArgs e)
        {

            Response.Redirect("default.aspx");

        }

        protected void Delete_Button(object sender, EventArgs e)
        {
            Response.Redirect("DeleteStudent.aspx");
        }
    }
}

