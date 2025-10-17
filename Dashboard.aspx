<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="English_Learning1.Admin.Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard - English Learning System</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/bootstrap-icons.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
    <style>
        .dashboard-card {
            transition: transform 0.2s;
        }
        .dashboard-card:hover {
            transform: translateY(-5px);
        }
        .sidebar {
            min-height: 100vh;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        .main-content {
            background-color: #f8f9fa;
        }
        .stats-card {
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <nav class="col-md-2 d-none d-md-block sidebar p-0">
                    <div class="sidebar-sticky">
                        <div class="p-3">
                            <h5 class="text-white mb-4">
                                <i class="bi bi-book me-2"></i>
                                Admin Panel
                            </h5>
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link text-white active" href="Dashboard.aspx">
                                        <i class="bi bi-house-door me-2"></i>
                                        Dashboard
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="#users">
                                        <i class="bi bi-people me-2"></i>
                                        Users
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="#courses">
                                        <i class="bi bi-journal-text me-2"></i>
                                        Courses
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="#reports">
                                        <i class="bi bi-graph-up me-2"></i>
                                        Reports
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="#settings">
                                        <i class="bi bi-gear me-2"></i>
                                        Settings
                                    </a>
                                </li>
                                <li class="nav-item mt-3">
                                    <a class="nav-link text-white" href="Logout.aspx">
                                        <i class="bi bi-box-arrow-right me-2"></i>
                                        Logout
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <!-- Main Content -->
                <main class="col-md-10 ms-sm-auto px-md-4 main-content">
                    <!-- Header -->
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">Dashboard</h1>
                        <div class="btn-toolbar mb-2 mb-md-0">
                            <div class="btn-group me-2">
                                <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
                            </div>
                            <asp:Button ID="btnRefresh" runat="server" Text="Refresh" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnRefresh_Click" />
                        </div>
                    </div>

                    <!-- Welcome Message -->
                    <div class="alert alert-success" role="alert">
                        <i class="bi bi-check-circle me-2"></i>
                        Welcome back, <strong><asp:Label ID="lblUsername" runat="server"></asp:Label></strong>! 
                        Here's what's happening with your English Learning System.
                    </div>

                    <!-- Statistics Cards -->
                    <div class="row mb-4">
                        <div class="col-md-3 mb-3">
                            <div class="card stats-card dashboard-card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="card-title text-muted">Total Users</h6>
                                            <h3 class="card-text text-primary mb-0">
                                                <asp:Label ID="lblTotalUsers" runat="server" Text="0"></asp:Label>
                                            </h3>
                                        </div>
                                        <div class="text-primary">
                                            <i class="bi bi-people-fill fs-1"></i>
                                        </div>
                                    </div>
                                    <small class="text-success">
                                        <i class="bi bi-arrow-up"></i>
                                        <asp:Label ID="lblUserGrowth" runat="server" Text="12%"></asp:Label> from last month
                                    </small>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <div class="card stats-card dashboard-card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="card-title text-muted">Active Courses</h6>
                                            <h3 class="card-text text-success mb-0">
                                                <asp:Label ID="lblActiveCourses" runat="server" Text="0"></asp:Label>
                                            </h3>
                                        </div>
                                        <div class="text-success">
                                            <i class="bi bi-book-fill fs-1"></i>
                                        </div>
                                    </div>
                                    <small class="text-success">
                                        <i class="bi bi-arrow-up"></i>
                                        8% from last month
                                    </small>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <div class="card stats-card dashboard-card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="card-title text-muted">Total Enrollments</h6>
                                            <h3 class="card-text text-warning mb-0">
                                                <asp:Label ID="lblTotalEnrollments" runat="server" Text="0"></asp:Label>
                                            </h3>
                                        </div>
                                        <div class="text-warning">
                                            <i class="bi bi-person-check-fill fs-1"></i>
                                        </div>
                                    </div>
                                    <small class="text-success">
                                        <i class="bi bi-arrow-up"></i>
                                        15% from last month
                                    </small>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <div class="card stats-card dashboard-card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="card-title text-muted">System Health</h6>
                                            <h3 class="card-text text-info mb-0">98%</h3>
                                        </div>
                                        <div class="text-info">
                                            <i class="bi bi-activity fs-1"></i>
                                        </div>
                                    </div>
                                    <small class="text-muted">All systems operational</small>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Recent Activity & User Management -->
                    <div class="row">
                        <!-- Recent Users -->
                        <div class="col-md-8 mb-4">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="mb-0">
                                        <i class="bi bi-person-plus me-2"></i>
                                        Recent User Registrations
                                    </h5>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <asp:GridView ID="gvRecentUsers" runat="server" CssClass="table table-hover" AutoGenerateColumns="false" OnRowCommand="gvRecentUsers_RowCommand">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Avatar">
                                                    <ItemTemplate>
                                                        <asp:Image ID="imgAvatar" runat="server" CssClass="user-avatar" ImageUrl='<%# Eval("ImagePath", "../Uploads/{0}") %>' AlternateText="Avatar" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                                <asp:BoundField DataField="City" HeaderText="City" />
                                                <asp:BoundField DataField="RegistrationDate" HeaderText="Joined" DataFormatString="{0:dd/MM/yyyy}" />
                                                <asp:TemplateField HeaderText="Actions">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="btnView" runat="server" CssClass="btn btn-sm btn-outline-primary me-1" CommandName="View" CommandArgument='<%# Eval("Id") %>'>
                                                            <i class="bi bi-eye"></i>
                                                        </asp:LinkButton>
                                                        <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-sm btn-outline-secondary me-1" CommandName="Edit" CommandArgument='<%# Eval("Id") %>'>
                                                            <i class="bi bi-pencil"></i>
                                                        </asp:LinkButton>
                                                        <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-sm btn-outline-danger" CommandName="Delete" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('Are you sure you want to delete this user?');">
                                                            <i class="bi bi-trash"></i>
                                                        </asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                    <asp:Label ID="lblNoUsers" runat="server" Text="No users found." CssClass="text-muted d-none"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <!-- Quick Actions -->
                        <div class="col-md-4 mb-4">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="mb-0">
                                        <i class="bi bi-lightning me-2"></i>
                                        Quick Actions
                                    </h5>
                                </div>
                                <div class="card-body">
                                    <div class="d-grid gap-2">
                                        <asp:Button ID="btnAddUser" runat="server" Text="Add New User" CssClass="btn btn-primary" OnClick="btnAddUser_Click" />
                                        <asp:Button ID="btnManageCourses" runat="server" Text="Manage Dictionary" CssClass="btn btn-success" OnClick="btnManageCourses_Click" />
                                    </div>
                                </div>
                            </div>

                            <!-- System Info -->
                            <div class="card mt-3">
                                <div class="card-header">
                                    <h5 class="mb-0">
                                        <i class="bi bi-info-circle me-2"></i>
                                        System Info
                                    </h5>
                                </div>
                                <div class="card-body">
                                    <p class="mb-1"><strong>Server Time:</strong> <asp:Label ID="lblServerTime" runat="server"></asp:Label></p>
                                    <p class="mb-1"><strong>Database:</strong> Connected</p>
                                    <p class="mb-1"><strong>Version:</strong> v1.0.0</p>
                                    <p class="mb-0"><strong>Last Backup:</strong> Today 2:00 AM</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>

        <!-- Bootstrap JS -->
        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>