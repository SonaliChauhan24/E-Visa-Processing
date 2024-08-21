<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="E-visaPortal.aspx.cs" Inherits="E_Visa_Processing.E_visaPortal" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>E-VISA PORTAL</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 92.5vh;
        }
        .container {
            width: 80%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .heading {
            text-align: center;
            margin-bottom: 20px;
        }
        .heading h1 {
            font-size: 36px;
            margin: 0;
        }
        .card-container {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }
        .card {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 300px;
        }
        .card h2 {
            margin-top: 0;
            font-size: 24px;
            text-align: center;
        }
        .card input[type="text"],
        .card input[type="password"] {
            width: 100%;
            padding: 4px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .card input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .card input[type="submit"]:hover {
            background: #0056b3;
        }
    </style>
</head>
<body style ="background-image:url('Content/Images/image.jpg');background-size:cover;background-repeat:no-repeat;border: 2px solid black; padding: 25px;background-size: 100% 100%;background-position: center; ">
    <form id="form1" runat="server">
        <div class="container">
            <div class="heading">
                <h1>E-VISA PORTAL</h1>
            </div>
            <div class="card-container">
                <div class="card">
                    <h2>Admin Login</h2>
                    <asp:TextBox ID="txtAdminUsername" runat="server" Placeholder="Username" />
                    <asp:TextBox ID="txtAdminPassword" runat="server" TextMode="Password" Placeholder="Password" />
                    <asp:Button ID="btnAdminSubmit" runat="server" Text="Submit" OnClick="btnAdminSubmit_Click" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
                <div class="card">
                    <h2>HR Login</h2>
                    <asp:TextBox ID="txtHRUsername" runat="server" Placeholder="Username" />
                    <asp:TextBox ID="txtHRPassword" runat="server" TextMode="Password" Placeholder="Password" />
                    <asp:Button ID="btnHRSubmit" runat="server" Text="Submit" OnClick="btnHRSubmit_Click" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </div>
                <div class="card">
                    <h2>Employee Login</h2>
                    <asp:TextBox ID="txtEmployeeUsername" runat="server" Placeholder="Username" />
                    <asp:TextBox ID="txtEmployeePassword" runat="server" TextMode="Password" Placeholder="Password" />
                    <asp:Button ID="btnEmployeeSubmit" runat="server" Text="Submit" OnClick="btnEmployeeSubmit_Click" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
