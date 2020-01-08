<%--
  Created by IntelliJ IDEA.
  User: a2019
  Date: 1/7/20
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
    <h1>Customer List</h1>
    <p>
        <a href="${pageContext.request.contextPath}/customers?action=create">Create new customer</a>
    </p>
    <table border="1">
        <tr>
            <td>Name</td>
            <td>Email</td>
            <td>Address</td>
            <td>Edit</td>
            <td>Delete</td>
            <td>Detail</td>
        </tr>
        <c:forEach items = '${requestScope["customers"]}' var="customer">
        <tr>
            <td>${customer.getName()}</td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td><a href="${pageContext.request.contextPath}/customers?action=edit&customer_id=${customer.getCustomer_id()}">edit</a></td>
            <td><a href="${pageContext.request.contextPath}/customers?action=delete&customer_id=${customer.getCustomer_id()}">delete</a></td>
            <td><a href="${pageContext.request.contextPath}/customers?action=view&customer_id=${customer.getCustomer_id()}">View</a> </td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>
