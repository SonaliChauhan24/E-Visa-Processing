<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRLogin.aspx.cs" Inherits="E_Visa_Processing.HRLogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR Dashboard</title>
    <link rel="stylesheet" href="HRstyles.css">
</head>
<body  style ="background-image:url('Content/Images/image.jpg');background-size:cover;background-repeat:no-repeat;border: 2px solid black; padding: 25px;background-size: 100% 100%;background-position: center; ">
    <div class="dashboard">
        <h1 class="heading">HR DASHBOARD</h1>
        <div class="card-container" style="cursor:pointer;">
          
            <div class="card">
                <h2>VIEW EMPLOYEES</h2>
                <h4 class="heading2">All the added employees will be displayed to the HR person. </h4>
            </div>
            <div class="card">
                <h2>NEW VISA REQUEST</h2>
                <h4 class="heading2">Selecting the employee and adding details visa for country, dates, etc.  </h4>
            </div>
            <div class="card">
                <h2>UPDATE VISA REQUEST</h2>
                <h4 class="heading2">Updating Interview details with its result and even updating final result.</h4>
            </div>
            <div class="card">
                <h2>REPORTING</h2>
                <h4 class="heading2">All the visa reporting details can be viewed by the HR person. </h4>
            </div>
            <div class="card">
                <h2>CHANGE PASSWORD</h2>
                <h4 class="heading2">HR person can change the password with new one anytime. </h4>
            </div>
            <div class="card" onclick="window.location.href='Feedback.aspx'">
                <h2>FEEDBACK</h2>
                <h4 class="heading2">HR can send feedback directly to admin. </h4>
            </div>
        </div>
    </div>
</body>
</html>

