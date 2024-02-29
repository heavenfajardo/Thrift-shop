<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedbacks.aspx.cs" Inherits="Shop.Feedbacks" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
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

        h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: calc(100% - 12px);
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        textarea {
            resize: vertical;
        }

        .submit-button,
        .go-back-button {
            background-color: #555; 
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

        .submit-button:hover,
        .go-back-button:hover {
            background-color: #333; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Feedback Form</h2>
        <form runat="server" onsubmit="return SubmitFeedback()">
            <div class="form-group">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required runat="server">
            </div>
            <div class="form-group">
                <label for="email">Your Email:</label>
                <input type="email" id="email" name="email" required runat="server">
            </div>
            <div class="form-group">
                <label for="message">Your Feedback:</label>
                <textarea id="message" name="message" rows="4" required runat="server"></textarea>
            </div>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit " OnClick="Submit" CssClass="submit-button" />
            <button type="button" onclick="goToHomepage()" class="go-back-button">Go Back to Homepage</button>
        </form>
    </div>

    <script>
        function SubmitButton() {
            
            return true; 
        }

        function goToHomepage() {
            window.location.href = "Home.aspx";
        }
    </script>
</body>
</html>
