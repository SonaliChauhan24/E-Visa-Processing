<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisaPortal.aspx.cs" Inherits="E_Visa_Processing.VisaPortal" %>

<!DOCTYPE html>
<html>
<head>
    <title>E-VISA PORTAL</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: lightblue; /* Light background for the whole page */
        }
        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            text-align: center;
        }
        .header {
            margin-bottom: 30px;
        }
        .card-container {
            display: flex;
            justify-content: center; /* Center horizontally */
        }
        .card {
            width: 200px;
            text-align: center;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            margin: 0 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            cursor:pointer;
            background-color: ghostwhite; /* White background for the card */
        }
                .card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}
        .card i {
            font-size: 30px;
            margin-bottom: 10px;
        }
        .card h5 {
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>E-VISA PORTAL</h1>
        </div>
        <div class="card-container">
            <div class="card" onclick="window.location.href='Login.aspx'">
                <i class="fas fa-user-shield"></i> <!-- Admin Icon -->
                <h5>ADMIN LOGIN</h5>
            </div>
            <div class="card" onclick="window.location.href='HRLoginForm.aspx'">
                <i class="fas fa-user-tie"></i> <!-- HR Icon -->
                <h5>HR LOGIN</h5>
            </div>
            <div class="card" onclick="window.location.href='EmployeeLoginForm.aspx'">
                <i class="fas fa-user"></i> <!-- Employee Icon -->
                <h5>EMPLOYEE LOGIN</h5>
            </div>
        </div>
    </div>
</body>
</html>

