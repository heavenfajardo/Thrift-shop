<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Shop.Settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Settings</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2; 
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            margin: 50px auto;
            background-color: #fff; 
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .section {
            margin-bottom: 20px;
        }

        h2 {
            text-align: center;
        }

        label {
            display: block;
            font-weight: bold;
        }

        .textbox {
            width: calc(100% - 12px);
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .button {
            background-color: #555; 
            color: #fff; 
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px; 
        }

        .button:hover {
            background-color: #333; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="section">
                <h2>User Settings</h2>
                <div>
                    <label for="txtCurrentPassword">Current Password</label>
                    <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" CssClass="textbox" placeholder="Current Password"></asp:TextBox>
                </div>
                <div>
                    <label for="txtNewPassword">New Password</label>
                    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="textbox" placeholder="New Password"></asp:TextBox>
                </div>
                <div>
                    <label for="txtConfirmPassword">Confirm New Password</label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="textbox" placeholder="Confirm New Password"></asp:TextBox>
                </div>
                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" OnClick="btnChangePassword_Click" CssClass="button" />
            </div>
            <asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" OnClick="btnSaveChanges_Click" CssClass="button" />
            <button type="button" onclick="goToHomepage()" class="button">Go Back to Homepage</button>
        </div>
    </form>

    <script>
        function goToHomepage() {
            window.location.href = "Home.aspx";
        }
    </script>
</body>
</html>
