<%--
  Created by IntelliJ IDEA.
  User: sungminkim
  Date: 2022/11/19
  Time: 1:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload Photo</title>
</head>
<body>
  <form method="post" action="fileupload.jsp" enctype="multipart/form-data">
    <input type="file" name="photo">
    <input type="submit" value="upload">
  </form>
    <button type="button" onclick="history.back()">뒤로 가기</button>
</body>
</html>
