<%--
  Created by IntelliJ IDEA.
  User: sungminkim
  Date: 2022/11/18
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.membercrud.dao.MemberDAO, com.membercrud.bean.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<%
    MemberDAO memberDAO = new MemberDAO();
    String id=request.getParameter("id");
    MemberVO u=memberDAO.getOne(Integer.parseInt(id));
    request.setAttribute("vo",u);
%>

<h1 align="center">Edit Form</h1>
<form action="edit_ok.jsp" method="post" enctype="multipart/form-data">
    <input type="hidden" name="sid" value="<%=u.getSid() %>"/>
    <table align="center">
        <tr><td>User ID:</td><td><input type="text" id="userid" name="userid" value="${vo.getUserid()}"/></td></tr>
        <tr><td>User Name:</td><td><input type="text" id="username" name="username" value="${vo.getUsername()}"/></td></tr>
        <tr><td>Password:</td><td><input type="text" id="password" name="password" value="${vo.getPassword()}"></td></tr>
        <tr><td>Photo:</td><td><input type="file" id="photo" name="photo" value="${vo.getPhoto()}" />
            <c:if test="${vo.getPhoto() ne ''}"><br/><img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class="photo"></c:if></td></tr>
        <tr><td>Email:</td><td><input type="text" id="email" name="email" value="${vo.getEmail()}" /></td></tr>
        <tr><td>Blog URL:</td><td><input type="text" id="blogurl" name="blogurl" value="${vo.getBlogurl()}"></td></tr>
        <tr><td>Details:</td><td><textarea cols="50" rows="5" id="detail" name="detail">${vo.getDetail()}</textarea></td></tr>
        <tr><td colspan="2"><input type="submit" value="Edit Post"/>
            <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
    </table>
</form>

</body>
</html>
