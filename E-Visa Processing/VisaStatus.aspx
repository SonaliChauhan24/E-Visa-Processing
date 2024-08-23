<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisaStatus.aspx.cs" Inherits="E_Visa_Processing.VisaStatus" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Visa status</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    .form-container {
        max-width: 600px;
        margin: 20px auto;
    }
</style>
</head>
<body style="background-color: lightblue">
<form id="form1" runat="server">
<div class="container form-container">
<h2>Visa Status and Renewal</h2>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
 
            <asp:Panel ID="pnlVisaDetails" runat="server">
<asp:GridView ID="gvVisaDetails" runat="server" AutoGenerateColumns="False" OnRowCommand="gvVisaDetails_RowCommand">
<Columns>
<asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
<asp:BoundField DataField="VisaStatus" HeaderText="Visa Status" />
<asp:BoundField DataField="ExpiryDate" HeaderText="Expiry Date" DataFormatString="{0:MM/dd/yyyy}" />
<asp:TemplateField>
<ItemTemplate>
<asp:Button ID="btnRenew" runat="server" Text="Request Renewal" CommandName="Renew" CommandArgument='<%# Eval("VisaId") %>' />
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
                <br />
</asp:Panel>
 
            <asp:Panel ID="pnlRenewalRequest" runat="server" Visible="false">
<h3>Request Visa Renewal</h3>
<asp:Label ID="lblVisaId" runat="server" Text="Visa ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtVisaId" runat="server" ReadOnly="true"></asp:TextBox>
<br />
<br />
<asp:Label ID="lblReason" runat="server" Text="Reason for Renewal:"></asp:Label>
&nbsp;&nbsp;
<asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Rows="4" Width="338px"></asp:TextBox>
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnSubmitRenewal" runat="server" Text="Submit Request" OnClick="btnSubmitRenewal_Click" />
<br />
<br />
&nbsp;
<asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Panel>
</div>
</form>
</body>
</html>
