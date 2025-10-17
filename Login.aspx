<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="English_Learning1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="/css/register.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="register-container">
            <h1>Login</h1>

            <div class="form-group">
                <label for="TextBox1">Email</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="TextBox2">Password</label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn-save" OnClick="Button1_Click" />

            <p class="login-link">
                Don’t have an account? <a href="Register.aspx">Register here</a>
            </p>
        </div>
    </form>
</body>
</html>