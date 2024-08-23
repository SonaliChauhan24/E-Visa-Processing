<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultReport.aspx.cs" Inherits="E_Visa_Processing.ResultReport" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Result Report</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
        .form-container {
            max-width: 800px;
            margin: 20px auto;
        }
</style>
</head>
<body style="background-color: lightblue">
<form id="form1" runat="server">
<div class="container form-container">
<h2>&nbsp;</h2>
    <h2>&nbsp;</h2>
    <h2>Final Result Report</h2>
    <p>&nbsp;</p>
 
            <asp:GridView ID="gvFinalResultReport" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
<Columns>
<asp:BoundField DataField="CandidateId" HeaderText="Candidate ID" />
<asp:BoundField DataField="CandidateName" HeaderText="Candidate Name" />
<asp:BoundField DataField="ResultDate" HeaderText="Result Date" DataFormatString="{0:MM/dd/yyyy}" />
<asp:BoundField DataField="ResultStatus" HeaderText="Result Status" />
<asp:BoundField DataField="Comments" HeaderText="Comments" />
</Columns>
</asp:GridView>
 
            <br />
    <br />
 
            <asp:Button ID="btnGenerateReport" runat="server" Text="Generate Report" OnClick="btnGenerateReport_Click" CssClass="btn btn-primary" />
</div>
</form>
</body>
</html>
