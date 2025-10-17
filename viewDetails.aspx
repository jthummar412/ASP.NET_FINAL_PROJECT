<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewDetails.aspx.cs" Inherits="English_Learning1.viewDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Both">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <ItemStyle ForeColor="#000066" />
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("prod_image") %>' Height="100" Width="100" />
                    <br>
                    <br>
                    <br>
                    <br></br>
                    Product Name:
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("prod_name") %>'></asp:Label>
                    <br>
                    <br>
                    Product Cofiguration:
        <asp:Label ID="Label2" runat="server" Text='<%# Eval("prod_config") %>'></asp:Label>
                    <br>
                    <br>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </div>
    </form>
</body>
</html>
