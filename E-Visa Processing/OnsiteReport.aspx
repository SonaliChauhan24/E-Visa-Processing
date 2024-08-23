<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnsiteReport.aspx.cs" Inherits="E_Visa_Processing.OnsiteReport" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Onsite Report</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
        .form-container {
            max-width: 900px;
            margin: 20px auto;
        }
</style>
</head>
<body style="background-color: lightblue;">
<form id="form1" runat="server">
<div class="container form-container">
<h2>&nbsp;</h2>
    <h2>&nbsp;</h2>
    <h2>&nbsp;</h2>
    <h2>Onsite Report</h2>
    <p>&nbsp;</p>
 
            <asp:GridView ID="gvOnsiteReport" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
<Columns>
<asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
<asp:BoundField DataField="OnsiteLocation" HeaderText="Onsite Location" />
<asp:BoundField DataField="OnsiteDate" HeaderText="Onsite Date" DataFormatString="{0:MM/dd/yyyy}" />
<asp:BoundField DataField="ReportDetails" HeaderText="Report Details" />
<asp:BoundField DataField="Status" HeaderText="Status" />
</Columns>
</asp:GridView>
</div>
</form>
</body>
</html>