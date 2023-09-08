<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' href='register.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css'>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<!--header section starts-->
<header class="header">
    <a href="/src/main/webapp/Shopping/Index/index.html" class="logo"><i class='bx bxs-shopping-bags'></i>JAVAANJAVA</a>
</header>

<div class="wrapper">
    <div class="form-box register">
        <h1>Registration</h1>
        <form name="register" method="post" action="" >
            <div class="input-box">
                <span class="icon"><i class='bx bxs-user' ></i></span>
                <input name="id" type="text" placeholder="UserName" required>   
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-lock-alt'></i></span>
                <input name="passwd" type="password" placeholder="Password" required>
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-lock'></i></span>
                <input name="repasswd" type="password" placeholder="Re Password" required>
            </div> 
            <div class="input-box">
                <span class="icon"><i class='bx bxs-envelope' ></i></span>
                <input name="zipcode" type="text" placeholder="Zipcode" required>   
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-building' ></i></span>
                <input name="address" type="text" placeholder="Address" required>   
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-building-house' ></i></span>
                <input name="detailaddress" type="text" placeholder="Detail Address" required>   
            </div>
            <div class="remember-forgot">
                <label><input type="checkbox">Agree to register</label>
            </div>
                <button type="submit" class="btn">Sign up</button>
            <div class="register-link">
            <p>Already have an account?
                <a href="userlogin.html">Login</a>
            </p>

        </div>
    </form>
</div>
</div>
<!--header section ends-->
<!--custom js file lick-->
<script src='script.js'></script>
</body>
</html>