<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel ="stylesheet" type="text/css" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style><%@include file="all.css"%></style>
<title>Them user</title>
</head>
<body>
<%
	User ql = (User)session.getAttribute("quanly");
      	if(ql==null){
          	response.sendRedirect("gddangnhap.jsp?err=timeout");
      }
      %>
<h2> Thêm user </h2>
<form>
	<table>
	 <tr>
		<td><h5>Name</h5></td>
		<td><input type="text" name="name" id="name" required
		/></td>
     </tr>
     <tr>
		<td><h5>Ign</h5></td>
		<td><input type="text" name="ign" id="ign" required
		/></td>
     </tr>
     <tr>
		<td><h5>Password</h5></td><td>
		<input type="text" name="password" id="password" required
		/></td>
     </tr>
     <tr>
		<td><h5>SĐT</h5></td>
		<td><input type="text" name="sdt" id="sdt" required
		/></td>
     </tr>
     <tr>
		<td><h5>Email</h5></td>
		<td><input type="text" name="email" id="email" required
		/></td>
     </tr>
     <tr>
     <tr>
		<td><h5>Vai trò</h5></td>
		<td><input type="text" name="vaitro" id="vaitro" required
		/></td>
     </tr>
   
     	<td></td>
     	<td><input type="submit" class ="button" id ="button" value="Thêm" />
		</td>
     </tr>
     </table>
</form>
<%
	
	String name = request.getParameter("name");
	String ign = request.getParameter("ign");
	String password = request.getParameter("password");
	String sdt = request.getParameter("sdt");
	String email = request.getParameter("email");
	String vaitro = request.getParameter("vaitro");
    if(name!=null&&ign!=null&&password!=null&&sdt!=null&&email!=null&&vaitro!=null){
    	
    	User u = new User();
    	u.setName(name);
    	u.setIgn(ign);
    	u.setPassword(password);
    	u.setSdt(sdt);
    	u.setEmail(email);
    	u.setVaitro(vaitro);
    	Userdao dao = new Userdao();
    	if(dao.themUser(u)){
    		response.sendRedirect("gdquanlytaikhoan.jsp?page=back");
    	}
    	else{
    		%> <h4>Thêm tài khoản thất bại, vui lòng nhập lại</h4><%
    		}
    	}
	 
%>
</body>
</html>