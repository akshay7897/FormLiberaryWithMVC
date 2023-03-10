<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Student Registration Form</h3>
	<font color="green">${msg}</font>

	<form:form action="save" modelAttribute="student" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input path="email" /></td>
			</tr>

			<tr>
				<td>Gender:</td>
				<td><form:radiobutton path="gender" value="Male" />Male <form:radiobutton
						path="gender" value="Fe-Male" />Fe-Male</td>
			</tr>
			<tr>
				<td>Courses :</td>
				<td><form:select path="course">
						<form:option value="">--Select--</form:option>
						<form:options items="${course}" />
					</form:select></td>
			</tr>
			<tr>
				<td>Timing :</td>
				<td><form:checkboxes path="timing" items="${timing}"/>					
				</td>
			</tr>
			<tr>
			<td></td>
			<td><input type="Submit" value="save">
			</tr>

		</table>
	</form:form>
	
	<a href="viewDetails" >View All Students</a>

</body>
</html>