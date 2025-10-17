using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace English_Learning1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {

                Response.Write("<script>alert('Session Null');</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                string username = Session["email"].ToString();

                string connStr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();
                    string query = "SELECT Email FROM emp_tbl WHERE Name=@Username";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Username", username);
                        string email = cmd.ExecuteScalar()?.ToString();
                    }
                }
            }
        }
    }
}

//void fillDataList()
//{
//    con = new SqlConnection(con_str);
//    con.Open();

//    da = new SqlDataAdapter("SELECT * FROM product_tbl", con);
//    ds = new DataSet();
//    da.Fill(ds);

//    row = ds.Tables[0].Rows.Count;
//    pg = new PagedDataSource
//    {
//        AllowPaging = true,
//        PageSize = 3
//    };


//    if (ViewState["Id"] == null)
//        ViewState["Id"] = 0;

//    int currentPage = Convert.ToInt32(ViewState["Id"]);


//    if (currentPage < 0)
//        currentPage = 0;


//    int totalPages = (int)Math.Ceiling((double)row / pg.PageSize);
//    if (currentPage >= totalPages)
//        currentPage = totalPages - 1;

//    pg.CurrentPageIndex = currentPage;
//    pg.DataSource = ds.Tables[0].DefaultView;


//    lnk_prev.Enabled = currentPage > 0;
//    lnk_nxt.Enabled = currentPage < totalPages - 1;

//    DataList1.DataSource = pg;
//    DataList1.DataBind();


//}

//protected void lnk_nxt_Click(object sender, EventArgs e)
//{
//    int currentPage = Convert.ToInt32(ViewState["Id"]);
//    currentPage++;
//    ViewState["Id"] = currentPage;
//    fillDataList();
//}

//protected void lnk_prev_Click(object sender, EventArgs e)
//{
//    int currentPage = Convert.ToInt32(ViewState["Id"]);
//    currentPage--;
//    ViewState["Id"] = currentPage;
//    fillDataList();
//}
//    }
//}
