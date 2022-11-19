<%--
  Created by IntelliJ IDEA.
  User: sungminkim
  Date: 2022/11/18
  Time: 2:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.membercrud.dao.MemberDAO, com.membercrud.bean.MemberVO, com.membercrud.common.MemberFileUpload"%>
<%
  String sid = request.getParameter("id");
  if (sid != ""){
    int id = Integer.parseInt(sid);
    MemberVO u = new MemberVO();
    u.setSid(id);
    MemberDAO memberDAO = new MemberDAO();
    String filename=memberDAO.getPhotoFilename(id);
    if(filename!=null) MemberFileUpload.deleteFile(request,filename);
    memberDAO.deleteMember(u);
  }
  response.sendRedirect("list.jsp");
%>
