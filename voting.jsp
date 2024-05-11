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
    .vote-box {
       display: inline-block;
      width: 350px;
      height: 360px;
      border: 1px solid #ccc;
      border-radius: 10px;
      margin: 5px;
      padding: 60px;
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
    }
    .vote-box  h2 {
        margin-bottom: 0;
        text-align: center;
    }
     .btn {
      display: inline-block;
    
      text-decoration: none;
      border-radius: 5px;
     font-weight:bold;
     text-transform:uppercase;
	  background-color: #008631;
	  border: none;
	  color: white;
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
     h1{
    	text-align: center;
    }
    
     .logo {
      width:80px;
      height:80px;
      margin-bottom: 0px;
    }
    
    .h1-candidate{
    text-align: center;
    font-size: 20px;
    
    }
</style>

</head>
<body>
<%String check=(String)session.getAttribute("check"); 

if(check!=null){%>
<section class="vh-100">

<h1 class="h1">Voice Poll: Empowering Democracy Online</h1>
<form action="voting">
<div class="vote-box ">
	<div class="form-outline mb-4">
    	<img class="logo" src="https://www.shutterstock.com/image-vector/green-check-mark-icon-circle-600nw-576516469.jpg" alt="Admin Login Logo">
    	<h1 class="h1">VOICE YOUR CHOICE</h1>
    </div>
    
    <div>
    <h1 class="h1">Candidates</h1>
    </div>
    
    <div>
    <h1 class="h1-candidate">Candidate 1 : Ram
    <input type="radio" name="candidatename" id="c1" value="Ram">
    </h1>
    </div>
    
    <div>
    <h1 class="h1-candidate">Candidate 2 : Shyam
    <input type="radio" name="candidatename"  id="c2" value="Shyam" >
    </h1>
    </div>
    
    <div>
    <h1 class="h1-candidate">Candidate 3 : Rahul
    <input type="radio" name="candidatename" id="c3" value="Rahul">
    </h1>
    </div>
    
    <div>
    <h1 class="h1-candidate">Candidate 4 : Rohit
    <input type="radio" name="candidatename" id="c4" value="Rohit">
    </h1>
    </div>
    <input type="hidden" name="uid" value=<%=check %>>  
    <button class="btn">Vote</button>       
</div>
</form>
</section>
<%}
else{
response.sendRedirect("login.jsp");
}%>
</body>
</html>