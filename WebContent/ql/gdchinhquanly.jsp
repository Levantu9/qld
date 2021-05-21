<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
 function openPage(pageURL){
    window.location.href = pageURL;
 }
</script>
<style><%@include file="all.css"%></style>
<title>Trang chu quan ly</title>
</head>
<body>
<%
	User ql = (User)session.getAttribute("quanly");
      	if(ql==null){
          	response.sendRedirect("gddangnhap.jsp?err=timeout");
      }
      %>
<h2> Trang chủ quản lý </h2>
<form>
	<button class ="button" onclick="openPage('gdquanlytaikhoan.jsp')">Quản lý tài khoản</button>
	<button class ="button" onclick="openPage('gdtheodoidiem.jsp')">Theo dõi điểm</button>
	<button class ="button" onclick="openPage('gdxuatbaocaothongke.jsp')">Xuất báo cáo cấu hình</button>
</form>
</body>
</html>