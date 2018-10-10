<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Football Roster</h2>
<mvc:form modelAttribute="player" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="firstName">First Name</mvc:label></td>
	        <td><mvc:input path="firstName" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="number">Jersey Number</mvc:label></td>
	        <td><mvc:input path="number" /></td>
	    </tr>
		<tr>
            <td><mvc:label path="height">Height</mvc:label></td>
            <td><mvc:input path="height" /></td>
        </tr>
        <tr>
	        <td><mvc:label path="weight">Weight</mvc:label></td>
	        <td><mvc:input path="weight" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="position">Position</mvc:label></td>
	        <td><mvc:input path="position" /></td>
	    </tr>
            <tr>
            <td><mvc:label path="grade">Grade Level</mvc:label></td>
            <td><mvc:select path="grade" items="${grades}" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View current roster</a>

</body>
</html>