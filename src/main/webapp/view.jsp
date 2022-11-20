<%--
  Created by IntelliJ IDEA.
  User: sungminkim
  Date: 2022/11/19
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.membercrud.dao.MemberDAO, com.membercrud.bean.MemberVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View more infos</title>
</head>
<body>
<%
  MemberDAO memberDAO=new MemberDAO();
  String id=request.getParameter("id");
  MemberVO u=memberDAO.getOne(Integer.parseInt(id));
  request.setAttribute("vo",u);
%>
  <h1 align="center">Member's Information</h1>
  <table id="edit" align="center">
    <tr><td>User ID: </td><td>${vo.getUserid()}</td></tr>
    <tr><td>Username: </td><td>${vo.getUsername()}</td></tr>
    <tr><td>Password: </td><td>${vo.getPassword()}</td></tr>
    <tr><td>Photo: </td><td><c:if test="${vo.getPhoto() ne ''}"><br/>
      <img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class="photo"></c:if></td></tr>
    <tr><td>Email: </td><td>${vo.getEmail()}</td></tr>
    <tr><td>Blog URL: </td><td>${vo.getBlogurl()}</td></tr>
    <tr><td>Detail: </td><td>${vo.getDetail()}</td></tr>
    <tr><td>Register Date: </td><td>${vo.getRegdate()}</td></tr>
  </table>
  <div align="center">
    <button type="button" onclick="history.back()" >뒤로 가기</button>
    <button type="button" onclick="location.href='editform.jsp?id=${vo.getSid()}'">수정하기</button>
  </div>
</body>
</html>
