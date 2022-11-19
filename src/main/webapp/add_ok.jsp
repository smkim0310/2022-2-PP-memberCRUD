<%--
  Created by IntelliJ IDEA.
  User: sungminkim
  Date: 2022/11/18
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.membercrud.dao.MemberDAO"%>
<%@ page import="com.membercrud.common.MemberFileUpload" %>
<%@ page import="com.membercrud.bean.MemberVO" %>
<%@ page import="com.membercrud.common.MemberFileUpload"%>

<%
  request.setCharacterEncoding("utf-8");
  MemberDAO memberDAO = new MemberDAO();
  MemberFileUpload fileUpload = new MemberFileUpload();
  MemberVO u = fileUpload.uploadPhoto(request);

  int i = memberDAO.insertMember(u);
  String msg = "데이터 추가 성공 !";
  if(i == 0) msg = "[에러] 데이터 추가 ";
%>

<script>
  alert('<%=msg%>');
  location.href='list.jsp';
</script>
