<%--
  Created by IntelliJ IDEA.
  User: a2019
  Date: 1/7/20
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create New Customer</title>
    <style>
        .message{
            color: green;
        }
    </style>
</head>
<body>
    <h1>Create New Customer</h1>
    <p>
        <c:if test ='${requestScope["messege"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="/customers">Back to customer list</a>
    </p>
<form method="post">
    <fieldset>
        <legend>Customer Information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name"/></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="email" name="email" id="email"/></td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><input type="text" name="address" id="address"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create Customer"/></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
