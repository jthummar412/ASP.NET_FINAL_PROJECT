using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace English_Learning1.Admin
{
    public partial class Add_Dictionary : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;  // Connection object
        SqlDataAdapter da; // Container object
        DataSet ds; // Run Time Container
        SqlCommand cmd; // Insert, Update, Delete
        String fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            get_con();
            if (!IsPostBack)
            {
                fillCategory();
            }
        }
        void get_con()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void imgupload()
        {
            if (FileUpload.HasFile)
            {
                fnm = "images/" + FileUpload.FileName;
                FileUpload.SaveAs(Server.MapPath(fnm));
            }
        }
        void clear()
        {
            txtpnm.Text = "";
            txtconfig.Text = "";
        }
        void fillCategory()
        {
            get_con();
            da = new SqlDataAdapter("select * from product_tbl", con);
            ds = new DataSet();
            //da.Fill(ds);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            imgupload();

            cmd = new SqlCommand("INSERT INTO product_tbl (prod_name,prod_config,prod_image)VALUES('" + txtpnm.Text + "','" + txtconfig.Text + "','" + fnm + "')" ,con);
            cmd.ExecuteNonQuery();
            clear();
        }
    }
}