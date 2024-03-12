<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Shop.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff; /* Change background color to white */
            color: #000; /* Change text color to black */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 400px; 
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
        }
        input[type="text"],
        input[type="date"],
        input[type="tel"],
        input[type="email"] {
            width: calc(100% - 12px);
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input[type="submit"] {
            background-color: #555; /* Change button background color */
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #333; /* Change button hover background color */
        }
        .back-button {
            background-color: #555; /* Change button background color */
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
            text-align: center;
            display: inline-block;
            text-decoration: none; 
        }

        .back-button:hover {
            background-color: #333; /* Change button hover background color */
        }

    </style>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div class="form-group">
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" runat="server" />
        </div>
        <div class="form-group">
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" runat="server" />
        </div>
        <div class="form-group">
            <label for="contactNumber">Contact Number:</label>
            <input type="tel" id="contactNumber" runat="server" />
        </div>
        <div class="form-group">
            <label for="email">Email Address:</label>
            <input type="email" id="email" runat="server" />
        </div>
        <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" CssClass="back-button" />
        <asp:Button ID="BtnHome" runat="server" Text="Go Back to Homepage" OnClick="BtnHome_Click" CssClass="back-button" />
    </form>
</body>
</html>
