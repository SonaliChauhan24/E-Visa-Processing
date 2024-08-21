<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="E_Visa_Processing.AdminLogin" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="Style.css">
</head>
<body style ="background-image:url('Content/Images/image.jpg');background-size:cover;background-repeat:no-repeat;border: 2px solid black; padding: 25px;background-size: 100% 100%;background-position: center; ">
    <div class="dashboard">
        <h1 class="heading">ADMIN DASHBOARD</h1>
        <div class="card-container" style="cursor:pointer;">
            <div class="card">
                <h3 style="text-decoration: underline;">ADD HR</h3>
                <h4 class="heading2">Admin will add basic details and generate his Login Credentials. </h4>
            </div>
            <div class="card">
                <h3 style="text-decoration: underline;">MANAGE HR</h3>
                <h4 class="heading2">Added HR details can be Viewed / Edited / Deleted.</h4>
            </div>
            <div class="card">
                <h3 style="text-decoration: underline;">ADD EMPLOYEE</h3>
                <h4 class="heading2">Add Basic Details and generate Users Login Credentials. </h4>
            </div>
            <div class="card">
                <h3 style="text-decoration: underline;">MANAGE EMPLOYEE</h3>
                <h4 class="heading2">Added employee details can be Viewed / Edited / Deleted.</h4>
            </div>
            <div class="card">
                <h3 style="text-decoration: underline;">VISA STATUS</h3>
                <h4 class="heading2">Admin will view the current Visa status and its expiry information and request for renewal. </h4>
            </div>
           
            <div class="card">
                <h3 style="text-decoration: underline;">INTERVIEW REPORT</h3>
                <h4 class="heading2">Report of Employees Interview will show with its status. </h4>
            </div>
            <div class="card">
                <h3 style="text-decoration: underline;">RESULT REPORT</h3>
                <h4 class="heading2">Final Result report contains details of candidate and their result. </h4>
            </div>
            <div class="card">
                <h3 style="text-decoration: underline;">ONSITE REPORT</h3>
                <h4 class="heading2">Admin can view onsite report/details which are entered by the employee.</h4>
            </div>
            <div class="card" onclick="window.location.href='Feedback.aspx'">
                <h3 style="text-decoration: underline;">FEEDBACK</h3>
                <h4 class="heading2">Admin can view feedback send via employees and HR and even delete them after it’s viewed. </h4>
            </div>
        </div>
    </div>
</body>
</html>
