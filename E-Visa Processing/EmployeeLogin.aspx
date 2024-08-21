<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="E_Visa_Processing.EmployeeLogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Dashboard</title>
    <link rel="stylesheet" href="Empstyles.css">
</head>
<body style ="background-image:url('Content/Images/image.jpg');background-size:cover;background-repeat:no-repeat;border: 2px solid black; padding: 25px;background-size: 100% 100%;background-position: center; ">
    <div class="dashboard">
    <div class="dashboard">
        <h1 class="heading">EMPLOYEE DASHBOARD</h1>
        <div class="card-container" style="cursor:pointer;">
            <div class="card">
                <h2>ONSITE DETAILS</h2>
                <h4 class="heading2">Employee can check the next onsite Scheduled and view details like source and destination, period etc. </h4>
            </div>
            <div class="card">
                <h2>UPDATE ONSITE PROJECT</h2>
                <h4 class="heading2">On Regular interval employee can add details about the project and update its status. </h4>
            </div>
            <div class="card">
                <h2>CHANGE PASSWORD</h2>
                <h4 class="heading2">Employee can send feedback directly to admin.</h4>
            </div>
            <div class="card" onclick="window.location.href='Feedback.aspx'">
                <h2>FEEDBACK</h2>
                <h4 class="heading2"> An Employee can change the password with new one anytime. </h4>
            </div>
        </div>
    </div>
</body>
</html>

