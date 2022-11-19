<%--
  Created by IntelliJ IDEA.
  User: sungminkim
  Date: 2022/11/18
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.membercrud.dao.MemberDAO"%>
<%@page import="com.membercrud.bean.MemberVO"%>
<%@page import="com.membercrud.common.MemberFileUpload"%>

<%
    request.setCharacterEncoding("utf-8");
    MemberDAO memberDAO = new MemberDAO();
    MemberFileUpload upload=new MemberFileUpload();
    MemberVO u=upload.uploadPhoto(request);

    int i=memberDAO.updateBoard(u);
    String msg="데이터 수정 성공!";
    if(i==0) msg="[에러] 데이터 수정 실패";
%>

<script>
    alert('<%=msg%>');
    location.href='list.jsp';
</script>
