<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="English_Learning1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" href="/css/register.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="register-container">
            <h1>Create Account</h1>
            <div class="form-group">
                <label for="txtnm">Name</label>
                <asp:TextBox ID="txtnm" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
            <div class="form-inline">
                <div class="form-group-inline">
                    <label>Gender</label>
                    <asp:RadioButtonList ID="rdbgen" runat="server" RepeatDirection="Horizontal" CssClass="radio-list" TextAlign="Left">
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                </div>

            <div class="form-group">
                <label for="txteml">Email</label>
                <asp:TextBox ID="txteml" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtpass">Password</label>
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="drpct">City</label>
                <asp:DropDownList ID="drpct" runat="server" CssClass="form-control">
                    <asp:ListItem Text="--Select City--" Value="" />
                    <asp:ListItem Text="Rajkot" Value="Rajkot" />
                    <asp:ListItem Text="Pune" Value="Pune" />
                    <asp:ListItem Text="Mumbai" Value="Mumbai" />
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="fldimg">Upload Image</label>
                <asp:FileUpload ID="fldimg" runat="server" CssClass="form-control" />
            </div>

            <asp:Button ID="Btnsub" runat="server" Text="Submit" CssClass="btn-save" OnClick="Btnsub_Click" />

            <p class="login-link">
                Already have an account? <a href="Login.aspx">Login here</a>
            </p>
        </div>
    </form>
</body>
</html>
