<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
font-family:Roboto,sans-serif;
color:Black;
margin-top:15px;
}
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background-color: #f0f0f0;
    }
   

    .container {
      text-align: center;
    }

    .box {
      display: inline-block;
      width: 200px;
      height: 200px;
      border: 1px solid #ccc;
      border-radius: 10px;
      margin: 10px;
      padding: 40px;
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      
    }

    .logo {
      width:70px;
      height: 70px;
      margin-bottom: 20px;
    }
    .btn {
      display: inline-block;
      
      font-weight:bold;
    	text-transform:uppercase;    
  text-decoration: none;
      border-radius: 5px;
    
	  background-color: gray;
	  border: none;
	  color: black;
	  padding: 16px 32px;
	  text-align: center;
	  font-size: 16px;
	  margin: 4px 2px;
	  opacity: 0.6;
	  transition: 0.3s;
	    }

    .btn:hover {
      opacity:1;
    }

.rajdhani-bold {
  font-family: "Rajdhani", sans-serif;
  font-weight: 600;
  font-style: normal;
}

.roboto-condensed {
  font-family: "Roboto Condensed", sans-serif;
  font-optical-sizing: auto;
  font-weight: 700;
  font-style: normal;
}
</style>
</head>
<body>


<div class="container">
	
	<h1 class="roboto-condensed">E-VoteHube</h1>
    <div class="box">
      <img class="logo" src="https://cdn-icons-png.flaticon.com/128/456/456212.png" alt="Login Logo">
     <br>
      <a href="login.jsp" class="btn">Login</a>
    </div>
    <div class="box">
      <img class="logo" src="https://t3.ftcdn.net/jpg/06/21/21/72/240_F_621217224_AHnwlmmRqUrG7I24rhsQxiXjaEXHg9m7.jpg" alt="Signup Logo">
     <br>
      <a href="signup.jsp" class="btn">Signup</a>
    </div>
    <div class="box">
      <img class="logo" src="https://cdn-icons-png.flaticon.com/128/7542/7542245.png" alt="Admin Login Logo">
      <br>
	 <a href="adminlogin.jsp" class="btn">Admin</a>
	 </div>
  </div>

</body>
</html>