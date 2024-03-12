<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellwithUs.aspx.cs" Inherits="Shop.SellwithUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sell with Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2; /* Change background color to match settings page */
            color: #000; /* Change text color to black */
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff; /* Change background color to white */
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .btn-save {
            background-color: #000;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-save:hover {
            background-color: #555;
        }

        .error {
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Sell with Us</h2>
            <div class="form-group">
                <label for="txtName">Name:</label>
                <input type="text" id="txtName" runat="server" class="form-control" placeholder="Your Name">
            </div>
            <div class="form-group">
                <label for="txtEmail">Email Address:</label>
                <input type="text" id="txtEmail" runat="server" class="form-control" placeholder="Your Email Address">
            </div>
            <div class="form-group">
                <label for="txtProductType">Type of Product:</label>
                <input type="text" id="txtProductType" runat="server" class="form-control" placeholder="Type of Product">
            </div>
            <div class="form-group">
                <label for="txtProductName">Name of Product:</label>
                <input type="text" id="txtProductName" runat="server" class="form-control" placeholder="Name of Product">
            </div>
            <div class="form-group">
                <label for="txtPrice">Price:</label>
                <input type="text" id="txtPrice" runat="server" class="form-control" placeholder="Price">
            </div>
            <button type="button" class="btn-save" onclick="submitForm()">Save</button>
            <div id="errorMsg" class="error" style="display: none;"></div>
        </div>
    </form>

    <script>
        function submitForm() {
            var name = document.getElementById("txtName").value;
            var email = document.getElementById("txtEmail").value;
            var productType = document.getElementById("txtProductType").value;
            var productName = document.getElementById("txtProductName").value;
            var price = document.getElementById("txtPrice").value;

            if (name === "" || email === "" || productType === "" || productName === "" || price === "") {
                document.getElementById("errorMsg").innerText = "Please fill in all fields.";
                document.getElementById("errorMsg").style.display = "block";
            } else {
               
               
                alert("The admin will review your product.");

               
                window.location.href = "Home.aspx";
            }
        }
    </script>
</body>
</html>
