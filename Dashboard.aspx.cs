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
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblUsername.Text = Session["Username"].ToString();

                if (!IsPostBack)
                {
                    LoadDashboardData();
                    LoadRecentUsers();
                    lblServerTime.Text = DateTime.Now.ToString("hh:mm tt");
                }
            }
        }

        private void LoadDashboardData()
        {
            string connStr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    con.Open();

                    // Get total users count from emp_tbl
                    string userQuery = "SELECT COUNT(*) FROM emp_tbl";
                    using (SqlCommand cmd = new SqlCommand(userQuery, con))
                    {
                        lblTotalUsers.Text = cmd.ExecuteScalar().ToString();
                    }

                    // You can add more statistics queries here as your database grows
                    // For now, setting placeholder values
                    lblActiveCourses.Text = "5"; // Placeholder
                    lblTotalEnrollments.Text = "127"; // Placeholder
                }
            }
            catch (Exception ex)
            {
                // Handle database errors gracefully
                lblTotalUsers.Text = "Error loading data";
            }
        }

        private void LoadRecentUsers()
        {
            string connStr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    con.Open();

                    // Updated query to use correct table name and column names
                    string query = @"SELECT TOP 10 Id, Name, Email, City, 
                                   CONVERT(date, GETDATE()) as RegistrationDate,
                                   ISNULL(Image, 'default-avatar.png') as ImagePath
                                   FROM emp_tbl ORDER BY Id DESC";

                    using (SqlDataAdapter da = new SqlDataAdapter(query, con))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            gvRecentUsers.DataSource = dt;
                            gvRecentUsers.DataBind();
                            lblNoUsers.CssClass = "text-muted d-none";
                        }
                        else
                        {
                            gvRecentUsers.Visible = false;
                            lblNoUsers.CssClass = "text-muted";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                gvRecentUsers.Visible = false;
                lblNoUsers.Text = "Error loading user data: " + ex.Message;
                lblNoUsers.CssClass = "text-danger";
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            LoadDashboardData();
            LoadRecentUsers();
            lblServerTime.Text = DateTime.Now.ToString("hh:mm tt");
        }

        protected void gvRecentUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int userId = Convert.ToInt32(e.CommandArgument);

            switch (e.CommandName)
            {
                case "View":
                    // Redirect to user details page (you can create this later)
                    Response.Write("<script>alert('View user details - User ID: " + userId + "');</script>");
                    break;
                case "Edit":
                    // Redirect to edit user page (you can create this later)
                    Response.Write("<script>alert('Edit user - User ID: " + userId + "');</script>");
                    break;
                case "Delete":
                    // Delete user logic (with confirmation)
                    DeleteUser(userId);
                    break;
            }
        }

        private void DeleteUser(int userId)
        {
            string connStr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    con.Open();

                    string query = "DELETE FROM emp_tbl WHERE Id = @Id";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Id", userId);
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            LoadDashboardData();
                            LoadRecentUsers();
                            Response.Write("<script>alert('User deleted successfully!');</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error deleting user: " + ex.Message + "');</script>");
            }
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Register.aspx");
        }

        protected void btnManageCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Admin/Manage Dictionary.aspx");
        }
    }
}