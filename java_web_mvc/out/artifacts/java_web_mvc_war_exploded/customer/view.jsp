<%--
  Created by IntelliJ IDEA.
  User: a2019
  Date: 1/7/20
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Customer</title>
</head>
<body>
    <h1>Customer Details</h1>
    <p>
        <a href="/customers">Back To Customer List</a>
    </p>
    <fieldset>
    <legend>Customer Infomation</legend>
    <table>
        <tr>
            <td>Name: </td>
            <td>${requestScope["customer"].getName()}</td>
        </tr>
        <tr>
            <td>Email: </td>
            <td>${requestScope["customer"].getEmail()}</td>
        </tr>
        <tr>
            <td>Address: </td>
            <td>${requestScope["customer"].getAddress()}</td>
        </tr>
    </table>
    </fieldset>
</body>
</html>
