<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="Shop.ThankYou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank You</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2; 
            color: #000; 
            margin: 0;
            padding: 0;
        }
        
        .container {
            max-width: 800px;
            margin: 50px auto; 
            padding: 20px;
            background-color: #fff; 
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            text-align: center; 
        }

        h1 {
            color: #000; 
        }

        h2 {
            color: #000; 
            margin-top: 20px; 
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #000; 
            padding: 10px;
        }

        th {
            background-color: #000; 
            color: #fff; 
        }

        p {
            margin: 10px 0; 
        }

        .payment-info {
            text-align: left; 
            margin-top: 20px; 
        }

        .payment-info p {
            text-align: center; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Thank You for Your Purchase!</h1>
            <h2>Order History</h2>
            <asp:Repeater ID="OrderHistoryRepeater" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>Product</th>
                            <th>Price</th>
                            
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                         <td><%# Eval("Name") %></td>
                        <td>₱<%# Eval("Price") %></td>
                       
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <div class="payment-info">
                <h2>Payment Information</h2>
                <p>Name: <asp:Label ID="lblName" runat="server" Text=""></asp:Label></p>
                <p>Gcash Number: <asp:Label ID="lblGcashNumber" runat="server" Text=""></asp:Label></p>
                <p>Gcash Name: <asp:Label ID="lblGcashName" runat="server" Text=""></asp:Label></p>
                <p>Reference Number: <asp:Label ID="lblReferenceNumber" runat="server" Text=""></asp:Label></p>
                <p>Amount: ₱<asp:Label ID="lblAmount" runat="server"></asp:Label></p>
            </div>
        </div>
    </form>
</body>
</html>
