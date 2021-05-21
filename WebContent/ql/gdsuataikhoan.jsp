<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel ="stylesheet" type="text/css" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style><%@include file="all.css"%></style>
<title>Sua user</title>
</head>
<body>
<%
	User user = new User();
	User ql = (User)session.getAttribute("quanly");
      	if(ql==null){
          	response.sendRedirect("dangnhap.jsp?err=timeout");
      	}
      	String temp = request.getParameter("idsb");
      	String temp2 = request.getParameter("pages");
      	if(temp!=null||temp2!=null){
      	int i = Integer.parseInt(temp);
      	ArrayList<User> listuser = (ArrayList<User>)session.getAttribute("listuser");
      	user = listuser.get(i);
      	session.setAttribute("idsua", user);
      	session.setAttribute("tempi",temp);
      	}else{
      		
      	}
      	if(temp2!=null){
      		%> <h4>Sửa sân bóng thất bại, vui lòng nhập lại</h4><%
      	}
      %>
<h2> Sửa sân bóng </h2>
<form>
	<table>
	 <tr>
		<td><h5>Name</h5></td>
		<td><input type="text" name="name" id="name" value= <%=user.getName() %> required
		/>
		
		</td>
     </tr>
     <tr>
		<td><h5>Ign</h5></td>
		<td><input type="text" name="ign" id="ign" value= <%=user.getIgn() %> required
		/>
		
		</td>
     </tr>
     <tr>
		<td><h5>Password</h5></td><td>
		<input type="text" name="password" id="password" value = <%=user.getPassword() %> required
		/>
		
		</td>
     </tr>
     <tr>
		<td><h5>SĐT</h5></td>
		<td><input type="text" name="sdt" id="sdt" value = "<%=user.getSdt() %>" required
		/>
		
		</td>
     </tr>
     <tr>
		<td><h5>Vai trò</h5></td>
		<td><input type="text" name="vaitro" id="vaitro" value = "<%=user.getVaitro() %>" required
		/>
		
		</td>
     </tr>
     <tr>
		<td><h5>Email</h5></td>
		<td><input type="text" name="email" id="email" value = "<%=user.getEmail() %>" required
		/>
		
		</td>
     </tr>
     <tr>
     	<td></td>
     	<td><input type="submit" class ="button" id ="button" value="Sửa" />
		</td>
     </tr>
     </table>
</form>
<%
	
	User userm = (User)(session.getAttribute("idsua"));
	String name = request.getParameter("name");
	String ign = request.getParameter("ign");
	String password = request.getParameter("password");
	String sdt = request.getParameter("sdt");
	String vaitro = request.getParameter("vaitro");
	String email = request.getParameter("email");

	if(name!=null&&ign!=null&&password!=null&&sdt!=null&&vaitro!=null&&email!=null){
    	userm.setName(name);
    	userm.setIgn(ign);
    	userm.setPassword(password);
    	userm.setSdt(sdt);
    	userm.setVaitro(vaitro);
    	userm.setEmail(email);
    	Userdao dao = new Userdao();
    	if(dao.sua(userm)){
    		response.sendRedirect("gdquanlytaikhoan.jsp?page=back");
    	}
    	else{
    		
    		temp = (String)(session.getAttribute("tempi"));
    		response.sendRedirect("gdsuataikhoan.jsp?pages=false&&idsb="+temp);
    		
    	}
	}
    	
	
	 
%>
</body>
</html>