using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace English_Learning1
{
    public partial class Login : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            if (TextBox1.Text != null && TextBox2.Text != null)
            {
                cmd = new SqlCommand("SELECT COUNT(*) FROM emp_tbl WHERE Email='" + TextBox1.Text + "' AND Password='" + TextBox2.Text + "'", con);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                if (i > 0)
                {
                    Session["email"] = TextBox1.Text;
                    Response.Write("<script>alert('Login Successfull');</script>");
                    Response.Redirect("WebForm1.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email or Password!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Enter both values please!');</script>");
            }
        }
    }
}