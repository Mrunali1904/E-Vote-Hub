<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%String check=(String)session.getAttribute("check"); 

if(check!=null){%>
<h1 class="display-6 text-center">Vote</h1>
<form action="votting">
<label name="c1">Candidate 1:</label>
<input type="radio" name="candidatename" id="c1" value="Ram"> Ram<br>

<label name="c2">Candidate 2:</label>
<input type="radio" name="candidatename"  id="c2" value="Shyam" > Shyam<br>

<label name="c3">Candidate 3:</label>
<input type="radio" name="candidatename" id="c3" value="Rahul"> Rahul<br>


<label name="c4">Candidate 4:</label>
<input type="radio" name="candidatename" id="c4" value="Rohit"> Rohit<br>

<input type="hidden" name="uid" value=<%=check %>>
<button class="btn btn-success">Vote</button>

</form>

<%}
else{
response.sendRedirect("login.jsp");
}%>
</body>
</html>