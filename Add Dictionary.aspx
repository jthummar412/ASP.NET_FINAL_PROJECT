<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Dictionary.aspx.cs" Inherits="English_Learning1.Admin.Add_Dictionary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Dictionary - Admin Panel</title>

    <link href="Style.css" rel="stylesheet" type="text/css" />
    <style>
        .dictionary-page {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px;
            background: #f5f7fb;
        }

        .dictionary-container {
            max-width: 560px;
            width: 100%;
            background: #ffffff;
            border: 1px solid #e5e7eb;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.06);
            padding: 28px;
        }

        .dictionary-header {
            margin-bottom: 18px;
        }

            .dictionary-header h1 {
                margin: 0 0 6px 0;
                font-size: 28px;
                color: #111827;
            }

            .dictionary-header p {
                margin: 0;
                font-size: 14px;
                color: #6b7280;
            }

        .form-group {
            margin-bottom: 16px;
        }

        .form-label {
            display: block;
            margin-bottom: 6px;
            font-size: 13px;
            color: #374151;
            font-weight: 600;
        }

        .form-control {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #d1d5db;
            border-radius: 8px;
            font-size: 14px;
            box-sizing: border-box;
        }

            .form-control:focus {
                outline: none;
                border-color: #2563eb;
                box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.15);
            }

        .file-upload {
            width: 100%;
            padding: 10px 12px;
            border: 1px dashed #9ca3af;
            border-radius: 8px;
            background: #f9fafb;
            color: #374151;
        }

        .form-actions {
            margin-top: 20px;
            text-align: right;
        }

        .btn-submit {
            background: #2563eb;
            border: none;
            color: #fff;
            padding: 10px 18px;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
        }

            .btn-submit:hover {
                background: #1d4ed8;
            }
    </style>
</head>


<body>
    <form id="form1" runat="server">
        <div class="dictionary-container">
            <div class="dictionary-header">
                <h1>📚 Add Dictionary Entry</h1>
                <p>Add new words and their meanings to the English Learning Dictionary</p>
            </div>

            <div class="dictionary-form">
                <div class="form-group">
                    <label class="form-label" for="txtpnm">Word/Product Name</label>
                    <asp:TextBox ID="txtpnm" runat="server" CssClass="form-control" placeholder="Enter the word or product name"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="form-label" for="txtconfig">Definition/Configuration</label>
                    <asp:TextBox ID="txtconfig" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Enter the definition, meaning, or configuration details"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label class="form-label" for="FileUpload">Upload Image</label>
                    <div class="file-upload-wrapper">
                        <asp:FileUpload ID="FileUpload" runat="server" CssClass="file-upload" />
                    </div>
                </div>

                <div class="form-actions">
                    <asp:Button ID="Button1" runat="server" Text="Add to Dictionary" OnClick="Button1_Click" CssClass="btn-submit" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
