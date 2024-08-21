<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="E_Visa_Processing.Feedback" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback Form</title>
   <style>
       body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 300px;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 5px;
}

.form-control {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
    border: 1px solid #ddd;
    border-radius: 4px;
}

textarea {
    resize: vertical;
}

.btn-submit {
    background-color: #28a745;
    color: #fff;
    border: none;
    padding: 10px 15px;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
}

.btn-submit:hover {
    background-color: #218838;
}

.message {
    margin-top: 15px;
    text-align: center;
}

   </style>
</head>
<body style ="background-image:url('Content/Images/image.jpg');background-size:cover;background-repeat:no-repeat;border: 2px solid black; padding: 25px;background-size: 100% 100%;background-position: center; ">
    <form id="form1" runat="server">
        <div class="container">
            <h1>Feedback Form</h1>
            <asp:Panel ID="FeedbackPanel" runat="server" CssClass="form-container">
                <div class="form-group">
                    <asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblFeedback" runat="server" Text="Feedback:" AssociatedControlID="txtFeedback"></asp:Label>
                    <asp:TextBox ID="txtFeedback" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>
                </div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit"  CssClass="btn-submit" />
                <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>

