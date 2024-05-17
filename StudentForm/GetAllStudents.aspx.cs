using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentForm
{
    public partial class GetAllStudents : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetAllStudentss();
            }

        }

       protected  void GetAllStudentss()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("GETALLSTUDENTS", conn);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        
        protected void BackToUpdateStudentDetails(object sender, EventArgs e)
        {
            Response.Redirect("UpdateStudent.aspx");
        }

        protected void HomePage_Button(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex =e.NewEditIndex;
            GetAllStudentss();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string Name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string Images = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string Gender = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string Email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string PhoneNumber = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string Address = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string DateOfJoining = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string Branches = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
            SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True");
            conn.Open();

            SqlCommand cmd = new SqlCommand("UPDATE_STUDENT", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentId", Id);

            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@Images", Images);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            cmd.Parameters.AddWithValue("Address", Address);
            DateTime dt=DateTime.Parse(DateOfJoining);
            cmd.Parameters.AddWithValue("@DateOfJoining", dt);
            cmd.Parameters.AddWithValue("@Branches", Branches);
            int t= cmd.ExecuteNonQuery();
            if (t > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Updated');", true);
                GridView1.EditIndex = -1;
                GetAllStudentss();
            }



        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetAllStudentss();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            string connectionString = @"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True";
            int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("Delete_Student_By_Id", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentId", Id);
            conn.Open();

            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Deleted');", true);
                GridView1.EditIndex = -1;
                GetAllStudentss();
            }



        }

        protected void GetDetailsByDateOfJoining(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True;";
            SqlConnection conn = new SqlConnection(connectionString);

            String Date1 = TextBox1.Text;
            string Date2 = TextBox2.Text;
            conn.Open();
            SqlCommand cmd = new SqlCommand("DetailsByDateOfJoining", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@DateOfJoining1", Date1);
            cmd.Parameters.AddWithValue("@DateOfJoining2", Date2);
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
        }

        protected void GetDetails(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True;";
            SqlConnection conn = new SqlConnection(connectionString);

            String StudentName = TextBox3.Text;
            string Gender = RadioButtonList1.Text;
            conn.Open();
            SqlCommand cmd = new SqlCommand("DetailsByFirstLetterAndMale", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentNamee", StudentName);
            cmd.Parameters.AddWithValue("@Genderr", Gender);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GetDetailsByBranches(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True;";
            SqlConnection conn = new SqlConnection(connectionString);
            String StudentName = TextBox4.Text;
            string Branches = DropDownList1.Text;
            conn.Open();
            SqlCommand cmd = new SqlCommand("DetailsByFisrtLetterNameAndBranches", conn);
            cmd.CommandType= CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentName", StudentName);
            cmd.Parameters.AddWithValue("@Branches",Branches);
            SqlDataAdapter sda=new SqlDataAdapter(cmd);
            DataTable dt=new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();









        }



        //protected void GetDetails(object sender, EventArgs e)
        //{
        //    string connectionString = @"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True;";
        //    SqlConnection conn = new SqlConnection(connectionString);
        //    string StudentName = TextBox3.Text;
        //    string Gender = RadioButtonList1.Text;
        //    conn.Open();
        //    SqlCommand cmd = new SqlCommand("DetailsByFirstLetterAndMale", conn);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@StudentNamee", StudentName);
        //    cmd.Parameters.AddWithValue("@Genderr", Gender);
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();



        //    }





    }


}