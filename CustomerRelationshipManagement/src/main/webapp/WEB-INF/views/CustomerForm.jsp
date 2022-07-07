<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Save Customer</title>
</head>
<body>
    <div id="container" align="center" style="margin-top:1%;">
    
    <table class="table table-bordered table-striped" align="center">
			<tr>
				<th style="background-color: #9acd32">
					<h1>Customer Relationship Management </h1>
				</th>
			</tr>
		</table>
		<hr/>
		
        <h1>Save Customer</h1>
        <form:form action="saveCustomer" method="post" modelAttribute="customer">
        <table>
            <form:hidden path="id"/>
            <tbody>
           
            <tr>
                <td>First Name:               </td>
                <td><form:input path="firstName" /></td>
            </tr>
            <tr>
                <td>Last Name:                </td>
                <td><form:input path="lastName" /></td>
            </tr>
            <tr>
                <td>Email:                    </td>
                <td><form:input path="email" /></td>
            </tr>
           
            <tr>
                <td colspan="2" align="center"><input type="submit" style="background-color:#32CD32" value="Save"></td>
            </tr>
            </tbody>
        </table>
        </form:form>
        
        <div style=""></div>
        <p>
			<a href="${pageContext.request.contextPath}/">Back
				to List</a>
		</p>
    </div>
</body>
</html>