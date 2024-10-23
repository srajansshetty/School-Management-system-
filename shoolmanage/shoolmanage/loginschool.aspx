<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginschool.aspx.cs" Inherits="shoolmanage.loginschool" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
     <style>
        body {
            background: url('./schooli.jpg') no-repeat center center;
            background-size: cover;
            height: 90vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-form {
            width: 400px;
            padding: 40px;
            background: rgba(0, 0, 0, 0.5);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
            border-radius: 20px;
            text-align: center;
        }
          .login-form h1 {
            margin-bottom: 20px;
            font-size: 38px;
            color: white;
            font-family: 'Arial', serif;
            text-shadow: 2px 2px 2px rgb(0, 0, 0);
        }
             .login-form p {
            margin: 10px 0;
            font-size: 30px;
            color: white;
            text-align: left;
        }
          .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            box-sizing: border-box;
            border-radius: 10px;
            border: 1px solid #ccc;
        }
           .login-form button:hover {
            background-color: #0056b3;
        }

        .login-form .checkbox-container {
            text-align: left;
            margin-top: 10px;
        }

        .login-form .checkbox-container label:hover {
            color: #0056b3;
        }
       .btn {
        width: 50%; 
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        cursor: pointer;
        border-radius: 15px; 
        transition: width 0.3s ease; 
     }

     .btn:hover {
        width: 60%; 
        background-color: #0056b3; 
        }
        </style>
     <script>
        function togglePassword() {
            var passwordField = document.getElementById('<%= txtPassword.ClientID %>');
            if (passwordField.type === "password") {
                passwordField.type = "text";  
            } else {
                passwordField.type = "password"; 
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login-form">
       
            <h1><b>Login Form</b></h1>
            <p>User Name</p>
            <asp:TextBox ID="txtUsername" runat="server" autocomplete="off" onpaste="false" placeholder="User Name" MaxLength="20" TextMode="SingleLine" CssClass="form-control" />
            <p>Password</p>
            <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" autocomplete="off" onpaste="return false" MaxLength="20" TextMode="Password" CssClass="form-control" />
            <div class="checkbox-container">
                <input type="checkbox" onclick="togglePassword()" /><b>Show Password</b>
            </div>
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary" />
            <br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="White" />
    </div>
    </form>
</body>
</html>
