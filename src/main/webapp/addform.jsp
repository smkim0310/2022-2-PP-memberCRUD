<%--
  Created by IntelliJ IDEA.
  User: sungminkim
  Date: 2022/11/18
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add new member</title>
</head>
<body>

<h1 align="center">Add New Member(member's data)</h1>
<form action="add_ok.jsp" method="post" enctype="multipart/form-data">
    <table align="center">
        <tr><td>User ID:</td><td><input type="text" id="userid" name="userid"/></td></tr>
        <tr><td>User Name:</td><td><input type="text" id="username" name="username"/></td></tr>
        <tr><td>Password:</td><td><input type="text" id="password" name="password"></td></tr>
        <tr><td>Photo:</td><td><input type="file" id="photo" name="photo"/></td></tr>
        <tr><td>Email:</td><td><input type="text" id="email" name="email"/></td></tr>
        <tr><td>Blog URL:</td><td><input type="text" id="blogurl" name="blogurl"/></td></tr>
        <tr><td>Details:</td><td><textarea cols="50" rows="5" id="detail" name="detail"></textarea></td></tr>
        <tr><td><a href="list.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
    </table>
</form>

</body>
</html>
