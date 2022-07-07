<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
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

<title>CUSTOMER RELATIONSHIP MANAGEMENT</title>
</head>
<body>
    <div class="container" align="center" >
    
    <div class="title-header" style="background-color:#9acd32; font-size: 3.75rem; padding: 1%; ">
			<h2>CUSTOMER RELATIONSHIP MANAGEMENT</h2>
		</div>

		<hr/>
		
		<h2>
			 <a href="newCustomer"
				class="btn btn-primary btn-sm float-end" style="float: left;">
				Add Customer</a>
		</h2>
        <hr />
      
        <table class="table table-bordered table-striped" >
  		<tr>
            <th style="background-color: #9acd32" >First Name</th>
            <th style="background-color: #9acd32" >Last Name </th>
            <th style="background-color: #9acd32" >Email</th>
            <th style="background-color: #9acd32" >Action</th>
         
           
 		</tr>
            <c:forEach var="customer" items="${customers}">
                <tr>
 
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td>${customer.email}</td>
                    
                    <td>
                    
                    <a href="editCustomer?id=${customer.id}">Update</a>
                             <a
                        href="deleteCustomer?id=${customer.id}"
                        onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false" >Delete</a></td>
 
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>