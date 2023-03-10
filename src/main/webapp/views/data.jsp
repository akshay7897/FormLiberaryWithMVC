<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="/" >Add new Student</a>
<h3>View Students</h3>
<table border="1">
<thead>
<tr>
<th>S.No</th>
<th>Name</th>
<th>Email</th>
<th>Gender</th>
<th>Course</th>
<th>Timing</th>
</tr>
</thead>

<tbody>
<form:forEach items="${student}" var="students" varStatus="index">
<tr>
<td>${index.count}</td>
<td>${students.name}</td>
<td>${students.email}</td>
<td>${students.gender}</td>
<td>${students.course}</td>
<td>${students.timing}</td>
</tr>
</form:forEach>
</tbody>

</table>


</body>
</html>