<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Centered Box</title>
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
    .result-box {
       display: inline-block;
      width: 350px;
      height: 370px;
      border: 1px solid #ccc;
      border-radius: 10px;
      margin: 0;
      padding: 60px;
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
    }
    .result-box h2 {
        margin-bottom: 0px;
        text-align: center;
    }
   
     .btn {
      display: inline-block;
          font-weight:bold;
    	text-transform:uppercase; 
      text-decoration: none;
      border-radius: 5px;
    
	  background-color: tomato;
	  border: none;
	  color: black;
	  padding: 16px 32px;
	  text-align: center;
	  font-size: 16px;
	  margin: 4px 2px;
	  opacity: 1;
	  transition: 0.3s;
	    }

    .btn:hover {
      opacity:0.5;
    }
    .logo {
      width:70px;
      height: 70px;
      margin-bottom: 0;
    }
    .button{
    position: fixed;
    right: 0;
    top: 0;
    }
    h1{
    text-align: center;
    }
    .winner{
    color:red;
    font-size:30px;
    }
    .candidate{
    text-align: center;
    color:black;
    }
</style>
</head>
<body>
<%String check=(String) session.getAttribute("check"); 
if(check!=null){
%>

<section class="vh-100">
<a href="logout" class="btn button">Logout</a>
<div class="result-box">
<h1 class="h1">Admin Panel</h1>

	<div class="form-outline mb-4">
    	<img class="logo" src="https://cdn-icons-png.flaticon.com/128/7542/7542245.png" alt="Admin Login Logo">
    </div>
	<div>
	<h1 class="winner">Winner is ${winner }</h1>
	</div>           
    <div>
	<h1 class="candidate">Ram: ${c1 }</h1>
	</div>      
	<div>
	<h1 class="candidate">Shyam: ${c2 }</h1>
	</div>      
	<div>
	<h1 class="candidate">Rahul: ${c3 }</h1>
	</div>      
	<div>
	<h1 class="candidate">Rohit: ${c4 }</h1>
	</div>             
            
  </div>
</section>
<%}else{
response.sendRedirect("adminlogin.jsp");
}%>
</body>
</html>