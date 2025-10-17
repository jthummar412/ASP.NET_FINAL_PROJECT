<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage Dictionary.aspx.cs" Inherits="English_Learning1.Admin.Manage_Dictionary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Dictionary </title>
      <link href="Style.css" rel="stylesheet" type="text/css" />
    <style>
        .manage-page {
            min-height: 100vh;
            padding: 24px;
            background: #f5f7fb;
        }

        .manage-container {
            max-width: 1200px;
            margin: 0 auto;
            background: #ffffff;
            border: 1px solid #e5e7eb;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.06);
            padding: 28px;
        }

        .manage-header {
            margin-bottom: 24px;
            text-align: center;
        }

            .manage-header h1 {
                margin: 0 0 8px 0;
                font-size: 32px;
                color: #111827;
            }

            .manage-header p {
                margin: 0;
                font-size: 16px;
                color: #6b7280;
            }

        .action-buttons {
            margin-bottom: 20px;
            text-align: right;
        }

        .btn-add {
            background: #10b981;
            border: none;
            color: #fff;
            padding: 10px 18px;
            border-radius: 8px;
            font-weight: 600;
            text-decoration: none;
            display: inline-block;
        }

            .btn-add:hover {
                background: #059669;
                color: #fff;
                text-decoration: none;
            }

        .grid-container {
            overflow-x: auto;
        }

        .gridview-style {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

            .gridview-style th {
                background: #f8fafc;
                color: #374151;
                font-weight: 600;
                padding: 12px 8px;
                text-align: left;
                border-bottom: 2px solid #e5e7eb;
            }

            .gridview-style td {
                padding: 12px 8px;
                border-bottom: 1px solid #e5e7eb;
                vertical-align: top;
            }

            .gridview-style tr:hover {
                background: #f9fafb;
            }

        .word-name {
            font-weight: 600;
            color: #111827;
            font-size: 16px;
        }

        .word-definition {
            color: #6b7280;
            font-size: 14px;
            max-width: 300px;
            word-wrap: break-word;
        }

        .word-image {
            width: 60px;
            height: 60px;
            object-fit: cover;
            border-radius: 8px;
            border: 1px solid #e5e7eb;
        }

        .action-links {
            display: flex;
            gap: 8px;
        }

        .btn-edit {
            background: #3b82f6;
            color: #fff;
            padding: 6px 12px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 12px;
            font-weight: 500;
        }

            .btn-edit:hover {
                background: #2563eb;
                color: #fff;
                text-decoration: none;
            }

        .btn-delete {
            background: #ef4444;
            color: #fff;
            padding: 6px 12px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 12px;
            font-weight: 500;
        }

            .btn-delete:hover {
                background: #dc2626;
                color: #fff;
                text-decoration: none;
            }

        .no-data {
            text-align: center;
            padding: 40px;
            color: #6b7280;
            font-size: 16px;
        }

        .pager-style {
            margin-top: 20px;
            text-align: center;
        }

            .pager-style a {
                color: #3b82f6;
                text-decoration: none;
                padding: 8px 12px;
                margin: 0 4px;
                border: 1px solid #e5e7eb;
                border-radius: 6px;
            }

                .pager-style a:hover {
                    background: #f3f4f6;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="manage-page">
            <div class="manage-container">
                <div class="manage-header">
                    <h1>📚 Manage Dictionary</h1>
                    <p>View, edit, and delete dictionary entries added by users</p>
                </div>

                <div class="action-buttons">
                    <a href="Add Dictionary.aspx" class="btn-add">+ Add New Entry</a>
                </div>

                <div class="grid-container">
                    <asp:GridView ID="GridView1" runat="server" 
                        OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                        OnRowCommand="GridView1_RowCommand"
                        AutoGenerateColumns="false"
                        CssClass="gridview-style"
                        AllowPaging="true"
                        PageSize="10"
                        PagerStyle-CssClass="pager-style">
                        <Columns>
                            <asp:TemplateField HeaderText="Word/Name">
                                <ItemTemplate>
                                    <div class="word-name">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("prod_name") %>'></asp:Label>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Definition">
                                <ItemTemplate>
                                    <div class="word-definition">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("prod_config") %>'></asp:Label>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" 
                                        ImageUrl='<%# Eval("prod_image") %>' 
                                        CssClass="word-image"
                                        AlternateText='<%# Eval("prod_name") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <div class="action-links">
                                        <asp:LinkButton ID="LinkButton1" runat="server" 
                                            CommandName="EditRecord" 
                                            CommandArgument='<%# Eval("Id") %>'
                                            CssClass="btn-edit"
                                            OnClientClick="return confirm('Are you sure you want to edit this entry?');">
                                            Edit
                                        </asp:LinkButton>
                                        
                                        <asp:LinkButton ID="LinkButton2" runat="server" 
                                            CommandName="DeleteRecord" 
                                            CommandArgument='<%# Eval("Id") %>'
                                            CssClass="btn-delete"
                                            OnClientClick="return confirm('Are you sure you want to delete this entry? This action cannot be undone.');">
                                            Delete
                                        </asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        
                        <EmptyDataTemplate>
                            <div class="no-data">
                                <h3>No Dictionary Entries Found</h3>
                                <p>No dictionary entries have been added yet. <a href="Add Dictionary.aspx">Add the first entry</a> to get started.</p>
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body></html>
