<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #f0f0f0;
    }
    .login-box {
       display: inline-block;
      width: 350px;
      height: 350px;
      border: 1px solid #ccc;
      border-radius: 10px;
      margin: 10px;
      padding: 60px;
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
    }
    .login-box h2 {
        margin-bottom: 10px;
        text-align: center;
    }
    .login-box input[type="text"],
    .login-box input[type="password"] {
        width: 70%;
        height:20px;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .login-box input[type="submit"] {
        width: 50%;
        padding: 20px;
        background-color: #007bff;
        border: none;
        border-radius: 4px;
        color: #fff;
        cursor: pointer;
        
    }
    .login-box input[type="submit"]:hover {
        background-color: #0056b3;
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
    .logo {
      width:70px;
      height: 70px;
      margin-bottom: 20px;
    }
    
</style>
</head>
<body>
<form action="signup">
<section class="vh-100">
<div class="login-box">
	<h1 class="h2">SignUp</h1>
  
  				
			<div class="form-outline mb-4">
			 <img class="logo" src="https://t3.ftcdn.net/jpg/06/21/21/72/240_F_621217224_AHnwlmmRqUrG7I24rhsQxiXjaEXHg9m7.jpg" alt="Signup Logo">
     		</div>
            <div class="form-outline mb-4">
              <input type="text" id="id" name="id" class="form-control form-control-lg " placeholder="UserId"/>
            </div>
            <div class="form-outline mb-4">
              <input type="password" id="typePasswordX-2" name="pass" placeholder="Password" class="form-control form-control-lg" />
            </div>
            <button class="btn"type="submit">SignUp</button>
  </div>
</section>
</form>
</body>
</html>