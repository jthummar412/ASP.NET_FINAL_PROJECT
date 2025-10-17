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
    public partial class viewDetails : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fill();
            }
        }

        void fill()
        {
            con = new SqlConnection(s);
            da = new SqlDataAdapter("select * from product_tbl where Id ='" + Request.QueryString["id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}