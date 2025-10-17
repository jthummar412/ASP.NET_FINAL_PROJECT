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
    public partial class Buy_Dictionary : System.Web.UI.Page
    {
        String con_str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int p, row;

        PagedDataSource pg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                fillDataList();
            }
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
        void fillDataList()
        {
            con = new SqlConnection(con_str);
            con.Open();

            da = new SqlDataAdapter("SELECT * FROM product_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();

            pg.AllowPaging = true;
            pg.PageSize = 3;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["Id"]);

            pg.DataSource = ds.Tables[0].DefaultView;

            // Enable/disable navigation button
            lnk_nxt.Enabled = !pg.IsFirstPage;
            lnk_prev.Enabled = !pg.IsLastPage;
            DataList1.DataSource = pg;
            DataList1.DataBind();
        }
        protected void lnk_nxt_Click(object sender, EventArgs e)//next
        {
            int currentPage = Convert.ToInt32(ViewState["Id"]);
            currentPage++;
            ViewState["Id"] = currentPage;
            fillDataList();
        }

        protected void lnk_prev_Click(object sender, EventArgs e)
        {
            int currentPage = Convert.ToInt32(ViewState["Id"]);
            currentPage--;
            ViewState["Id"] = currentPage;
            fillDataList();
        }


        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_view")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("viewDetails.aspx?id=" + id);
            }
            else if (e.CommandName == "cmd_add")
            {
                da = new SqlDataAdapter("Select * from emp_tbl where Email ='" + Session["admin"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);

                int userid = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
                int prodid = Convert.ToInt32(e.CommandArgument);

                da = new SqlDataAdapter("Select * from product_tbl where Id = '" + prodid + "'", con);
                ds = new DataSet();
                da.Fill(ds);

                string prod_name = ds.Tables[0].Rows[0][2].ToString();
                string prod_config = ds.Tables[0].Rows[0][3].ToString();
                string prod_img = ds.Tables[0].Rows[0][5].ToString();

                int quantity = 1;

              //  cmd = new SqlCommand("Insert into cart_tbl(User_Cart_Id, Prod_Cart_Id,Prod_Image, Prod_Name, Prod_price, Prod_Quantity) values ('" + userid + "','" + prodid + "', '" + img + "','" + prod_name + "','" + prod_price + "','" + quantity + "')", con);
                cmd.ExecuteNonQuery();

            }
        }
    }
}