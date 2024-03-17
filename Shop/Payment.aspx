<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Shop.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff; 
            color: #000; 
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px; 
            margin: 20px auto;
            padding: 20px;
            background-color: #000;
            color: #000;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
            overflow: hidden;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #fff;
        }

        input[type="text"], input[type="file"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #fff;
            box-sizing: border-box;
            background-color: transparent;
            color: #fff;
        }

        .btn-pay-now {
            background-color: #fff;
            color: #000;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-pay-now:hover {
            background-color: #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Payment Details</h1>
            <div class="form-group">
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtGcashNumber">Gcash Number:</label>
                <asp:TextBox ID="txtGcashNumber" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtGcashName">Gcash Name:</label>
                <asp:TextBox ID="txtGcashName" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtReferenceNumber">Reference Number:</label>
                <asp:TextBox ID="txtReferenceNumber" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtAmount">Amount:</label>
                <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="fileScreenshot">Screenshot for Payment:</label>
                <asp:FileUpload ID="fileScreenshot" runat="server" CssClass="form-control-file" />
            </div>
            <asp:Button ID="btnPayNow" runat="server" Text="Pay Now" OnClick="btnPayNow_Click" CssClass="btn-pay-now" />
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" CssClass="btn-pay-now" />
        </div>
    </form>
</body>
</html>