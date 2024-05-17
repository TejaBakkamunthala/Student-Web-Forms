using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentForm
{
    public partial class _Default : Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");

        }

        protected void LOGIN(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");


        }
    }
}