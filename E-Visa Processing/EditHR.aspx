﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditHR.aspx.cs" Inherits="E_Visa_Processing.EditHR" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forms Example</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            width: 60%;
            max-width: 800px;
        }
        .form-container {
            margin-bottom: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .form-container h2 {
            font-size: 20px;
            margin-bottom: 15px;
            text-align: center;
        }
        .form-container label {
            display: block;
            margin-top: 10px;
        }
        .form-container input[type="text"], .form-container input[type="email"], .form-container input[type="date"], .form-container input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            box-sizing: border-box;
        }
        .form-container input[type="submit"], .form-container input[type="button"] {
            margin-top: 15px;
            padding: 10px 15px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
        }
        .form-container input[type="button"] {
            background-color: #6c757d;
        }
    </style>
</head>
<body  style ="border: 1px solid black; padding: 15px;background-size: 100% 100%;background-position: center; background-color:lightblue; ">
    <div class="container">
        <form id="editHRForm" runat="server">
            <!-- First Form: FILL DETAILS -->
            <div class="form-container">
                <h2>FILL DETAILS</h2>
                 <label for="txtID">HR ID:</label>
                <asp:TextBox ID="txtID" runat="server" TextMode="Number"></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="btnSearch_Click"  />
&nbsp;<label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>

                <label for="txtPhoneNo">Phone No:</label>
                <asp:TextBox ID="txtPhoneNo" runat="server" TextMode="Phone"></asp:TextBox>

                <label for="ddlGender">Gender:</label>
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Text="Select" Value="" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                    <asp:ListItem Text="Other" Value="Other" />
                </asp:DropDownList>

                <label for="txtAddress">Address:</label>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>

                <label for="txtDate">Date:</label>
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>

                <asp:Button ID="btnSubmitDetails" runat="server" Text="Update Details" OnClick="btnUpdate_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;<br />
            </div>
        </form>
    </div>
</body>
</html>