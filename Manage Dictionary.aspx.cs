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
    public partial class Manage_Dictionary : System.Web.UI.Page
    {
        String s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        void get_con()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void BindGridView()
        {
            try
            {
                get_con();
                da = new SqlDataAdapter("SELECT Id, prod_name, prod_config, prod_image FROM product_tbl ORDER BY Id DESC", con);
                ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                else
                {
                    // Show message if no data found
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                // Handle error - you can show error message to user
                Response.Write("<script>alert('Error loading data: " + ex.Message + "');</script>");
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditRecord")
            {
                // Redirect to edit page or show edit form
                string id = e.CommandArgument.ToString();
                Response.Redirect("Edit Dictionary.aspx?id=" + id);
            }
            else if (e.CommandName == "DeleteRecord")
            {
                string id = e.CommandArgument.ToString();
                DeleteRecord(id);
            }
        }

        void DeleteRecord(string id)
        {
            try
            {
                get_con();
                cmd = new SqlCommand("DELETE FROM product_tbl WHERE Id = @id", con);
                cmd.Parameters.AddWithValue("@id", id);
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {
                    Response.Write("<script>alert('Dictionary entry deleted successfully!');</script>");
                    BindGridView(); // Refresh the grid
                }
                else
                {
                    Response.Write("<script>alert('No record found to delete!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error deleting record: " + ex.Message + "');</script>");
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Handle selection if needed
        }
    }
}
       