    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Shop.SellwithUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Cart</title>
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
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5);
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
        .card {
            background-color: rgba(0, 0, 0, 0.8);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            margin-bottom: 20px;
            overflow: hidden;
        }

        .card-img-top {
            height: 300px;
            object-fit: cover;
        }

         .card-body {
            padding: 20px;
        }

          .card-title {
            color: #ffa31a;
            font-size: 20px;
            margin-bottom: 10px;
        }
          .card-text {
            color: #fff;
            font-size: 16px;
            margin-bottom: 10px;
        }

           .total-price {
            color: #fff;
            font-size: 24px;
            margin-top: 20px;
        }

              .btn-view-menu {
        background-color: #fff;
        border: 2px solid #000;
        border-radius: 5px;
        color: #000;
        padding: 10px 20px;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        text-decoration: none;
        margin-right: 10px;
    }

    .btn-view-menu:hover {
        background-color: #000;
        color: #fff;
    }

    .btn-remove {
        background-color: #fff;
        border: 2px solid #000;
        border-radius: 5px;
        color: #000;
        padding: 5px 10px;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        text-decoration: none;
    }

    .btn-remove:hover {
        background-color: #000;
        color: #fff;
    }

    .btn-pay-gcash {
        background-color: #000;
        border: 2px solid #fff;
        border-radius: 5px;
        color: #fff;
        padding: 10px 20px;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn-pay-gcash:hover {
        background-color: #fff;
        color: #000;
    }
    </style>
</head>
<body>
     <form id="form1" runat="server">
        <div class="container">
            <h1>Orders</h1>
            <div>
                <asp:Repeater ID="ProductRepeater" runat="server">
                   <ItemTemplate>
                <div class="card mb-4">
                    <asp:Image runat="server" CssClass="card-img-top" ImageUrl='<%# Eval("ImageUrl") %>' />
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("Name") %></h5>
                        <p class="card-text">Price: ₱<%# Eval("Price") %></p> 
                        <asp:Button ID="RemoveButton" runat="server" Text="Remove" CssClass="btn-remove" OnClick="RemoveButton_Click" />
                    </div>
                </div>
            </ItemTemplate>
                </asp:Repeater>
                     <div>
                    <h2 class="total-price">Total Price: <asp:Label ID="TotalPriceLabel" runat="server"></asp:Label></h2>
                </div>

            <div>
                <asp:Button ID="ViewMenuButton" runat="server" Text="View Menu" OnClick="ViewMenuButton_Click" CssClass="btn btn-view-menu" />
                <asp:Button ID="PayGcashButton" runat="server" Text="Pay via Gcash" OnClick="PayGcashButton_Click" CssClass="btn-pay-gcash" />
                <asp:Button ID="AddMoreProductsButton" runat="server" Text="Add More Products" OnClick="AddMoreProductsButton_Click" CssClass="btn btn-view-menu" />
                
            </div>
        </div>
    </form>
</body>
</html>
