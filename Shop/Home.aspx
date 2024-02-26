<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Shop.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Dirkyboi Thrift Shop</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333;
            color: #fff;
            margin: 0;
            padding: 0;
            background-image: url('../images/dirk.png');
            background-size: cover;
            background-position: center;
            height: 100vh;
            overflow: hidden;
        }
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            display: flex;
            justify-content: start; 
            align-items: center;
            background-color: rgba(255, 255, 255, 0.5); 
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); 
            overflow: hidden;
        }
        .section {
            flex-grow: 1;
            text-align: center;
            padding: 10px 0; 
            cursor: pointer;
            transition: transform 0.3s ease, color 0.3s ease;
            position: relative;
            color: #000;
            text-decoration: none;
        }
        .section h2 {
            margin: 0;
            font-size: 16px; 
            text-transform: uppercase;
        }
        .section:hover {
            transform: scale(1.05);
            color: #000; 
        }
        .section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 50%;
            width: 0;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); 
            border-radius: 10px;
            transition: width 0.3s ease, left 0.3s ease;
            z-index: -1;
        }
        .section:hover::before {
            width: 100%;
            left: 0;
        }
        .logout-section {
            margin-left: auto;
            padding-right: 20px;
        }
        .logout-button {
            background-color: transparent;
            color: #000; 
            font-size: 16px; 
            font-weight: bold;
            border: none;
            cursor: pointer;
            transition: color 0.3s ease;
        }
        .logout-button:hover {
            color: #fff; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="section newArrivals-section" onclick="viewNewArrivals()">
                <h2>New Arrivals</h2>
            </div>
            <div class="section profile-section" onclick="viewProfile()">
                <h2>Profile</h2>
            </div>
            <div class="section shop-section" onclick="viewShop()">
                <h2>Shop</h2>
            </div>
            <div class="section sale-section" onclick="viewSale()">
                <h2>Sale</h2>
            </div>
            <div class="section sellwithus-section" onclick="viewSellwithUs()">
            <h2>Sell with Us</h2>
            </div>
            <div class="section feedbacks-section" onclick="viewFeedbacks()">
            <h2>Feedbacks</h2>
            </div>
            <div class="section settings-section" onclick="viewSettings()">
                <h2>Settings</h2>
            </div>
            <div class="section logout-section" onclick="logout()">
                <h2>Log Out</h2>
            </div>
        </div>
    </form>

    <script>
        function viewNewArrivals() {
            window.location.href = "Profile.aspx";
        }

        function viewProfile() {
            window.location.href = "Menu.aspx";
        }

        function viewShop() {
            window.location.href = "Orders.aspx";
        }

        function viewSale() {
            window.location.href = "OrdersHistory.aspx";
        }

        function viewSellwithUs() {
            window.location.href = "SellwithUs.aspx"
        }

        function viewFeedbacks() {
            window.location.href = "Feedbacks.aspx"

        }
        function viewSettings() {
            window.location.href = "Settings.aspx";
        }

        function logout() {
            window.location.href = "Login.aspx";
        }

      
    </script>
</body>
</html>
