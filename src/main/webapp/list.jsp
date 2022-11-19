<%--
  Created by IntelliJ IDEA.
  User: sungminkim
  Date: 2022/11/18
  Time: 10:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.membercrud.dao.MemberDAO, com.membercrud.bean.MemberVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='delete_ok.jsp?id=' + id;
        }
    </script>
</head>
<body>
<h1 align="center">Member Information</h1>
<%
    MemberDAO memberDAO = new MemberDAO();
    List<MemberVO> list = memberDAO.getList();
    request.setAttribute("list",list);
%>
<table id="list" width="90%">
    <tr>
        <th>no.</th>
        <th>Userid</th>
        <th>Username</th>
        <th>Email</th>
        <%--
        <th>Detail</th>
        --%>
        <th>Photo</th>
        <th>Regdate</th>
        <th>View</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u" varStatus="status">
        <tr>
            <td>${fn:length(list)-status.index}</td>
            <td>${u.getUserid()}</td>
            <td>${u.getUsername()}</td>
            <td>${u.getEmail()}</td>
            <%--
            <td>${u.getDetail()}</td>
            --%>
            <td><img width="100" height="100" src="${pageContext.request.contextPath}/upload/${u.getPhoto()}"></td>
            <td>${u.getRegdate()}</td>
            <td><a href="view.jsp?id=${u.getSid()}">View</a></td>
            <td><a href="editform.jsp?id=${u.getSid()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getSid()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><div align="right">
    <a href="addform.jsp">Add New Post</a>
</div>
</body>
</html>
