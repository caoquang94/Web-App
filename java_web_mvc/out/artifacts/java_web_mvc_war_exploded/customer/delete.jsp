<%--
  Created by IntelliJ IDEA.
  User: a2019
  Date: 1/7/20
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Customer</title>
</head>
<body>
    <h1>Delete Customer</h1>
    <p>
        <a href="/customers">Back To Customer List</a>
    </p>
    <form method="post">
        <h3>Are You Sure?</h3>
        <fieldset>
            <legend>Customer Information</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"/></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="email" name="email" id="email" value="${requestScope["customer"].getEmail()}"/></td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Delete Customer"/></td>
                    <td><a href="/customers">Back To Customer List</a> </td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
