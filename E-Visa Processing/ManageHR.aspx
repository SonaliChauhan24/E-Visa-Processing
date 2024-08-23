<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageHR.aspx.cs" Inherits="E_Visa_Processing.ManageHR" %>

<!DOCTYPE html>
<html>
<head>
    <title>Card Layout</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        .card-container {
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            height: 100vh; /* Full viewport height */
        }
        .card {
            width: 300px;
            height:150px;
            text-align: center;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 30px;
            margin: 0 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            background-color:ghostwhite;
        }
        .card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}
        .card i {
            font-size: 30px;
            margin-bottom: 10px;
        }
        .card h5{
            text-decoration:underline;
        }
    </style>
</head>
<body style ="border: 1px solid black; padding: 15px;background-size: 100% 100%;background-position: center; background-color:lightblue; ">
    <div class="container">
        <div class="card-container">
            <div class="card" onclick="window.location.href='ViewHR.aspx'">
                <i class="fas fa-eye"></i>
                <h5>View Detail</h5>
            </div>
            <div class="card" onclick="window.location.href='EditHR.aspx'">
                <i class="fas fa-edit"></i>
                <h5>Edit Detail</h5>
            </div>
            <div class="card" onclick="window.location.href='DeleteHR.aspx'">
                <i class="fas fa-trash"></i>
                <h5>Delete Detail</h5>
            </div>
        </div>
    </div>
</body>
</html>
