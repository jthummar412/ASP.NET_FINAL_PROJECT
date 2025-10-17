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
    public partial class Register : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;  // Connection object
        SqlDataAdapter da; // Container object
        DataSet ds; // Run Time Container
        SqlCommand cmd; // Insert, Update, Delete
        String fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            imgupload();
            fillgrid();

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void imgupload()
        {
            if (fldimg.HasFile)
            {
                fnm = "images/" + fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(fnm));
            }

        }

        void Clear()
        {
            txtnm.Text = "";
            txteml.Text = "";
        }
        void Open()
        {

        }
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from emp_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
        }

        protected void Btnsub_Click(object sender, EventArgs e)
        {
           
            if (Btnsub.Text == "Submit")
            {
                getcon();
                imgupload();
                cmd = new SqlCommand("INSERT INTO emp_tbl(Name,Gender,Email,Password,City,Image)VALUES('" + txtnm.Text + "','" + rdbgen.Text + "','" + txteml.Text + "','" + txtpass.Text + "','" + drpct.Text + "','" + fnm + "')", con);
                cmd.ExecuteNonQuery();
                fillgrid();
                Response.Redirect("WebForm1.aspx");
                Clear();


                //try
                //{
                //    con.Open();
                //    cmd = new SqlCommand("INSERT INTO emp_tbl(Name, Gender, Email, Password, City, Image) " +
                //    "VALUES (@Name, @Gender, @Email, @Password, @City, @Image)", con);

                //    cmd.Parameters.AddWithValue("@Name", txtnm.Text);
                //    cmd.Parameters.AddWithValue("@Gender", rdbgen.SelectedValue); // or .SelectedItem.Text depending on setup
                //    cmd.Parameters.AddWithValue("@Email", txteml.Text);
                //    cmd.Parameters.AddWithValue("@Password", txtpass.Text);
                //    cmd.Parameters.AddWithValue("@City", drpct.SelectedValue);
                //    cmd.Parameters.AddWithValue("@Image", fnm);

                //    cmd.ExecuteNonQuery();
                //    Response.Redirect("WebForm1.aspx");
                //    Clear();
                //}
                //catch (Exception ex)
                //{
                //    // Handle exception or log error
                //    Response.Write("Error: " + ex.Message);
                //}
                //finally
                //{
                //    con.Close();
                //}
            }
        }

    }
}
