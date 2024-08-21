<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="E_Visa_Processing.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }
        .login-container {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 300px;
        }
        .login-container h2 {
            margin: 0 0 20px;
            font-size: 24px;
            text-align: center;
        }
        .login-container input {
            width: 100%;
            padding: 10px 3px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .login-container input[type="submit"],
        .login-container input[type="button"] {
            background: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        .login-container input[type="button"] {
            background: #6c757d;
        }
        .login-container input[type="submit"]:hover,
        .login-container input[type="button"]:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body style ="background-image:url('Content/Images/image.jpg');background-size:cover;background-repeat:no-repeat;border: 2px solid black; padding: 25px;background-size: 100% 100%;background-position: center; ">
    <div class="login-container">
        <h2>Login</h2>
        <form id="loginForm" runat="server">
            <asp:Label ID="lblUsername" runat="server" Text="Username:" AssociatedControlID="txtUsername" />
            <asp:TextBox ID="txtUsername" runat="server" />
            <asp:Label ID="lblPassword" runat="server" Text="Password:" AssociatedControlID="txtPassword" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnClose" runat="server" Text="Close" OnClick="btnClose_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </form>
    </div>
</body>
</html>