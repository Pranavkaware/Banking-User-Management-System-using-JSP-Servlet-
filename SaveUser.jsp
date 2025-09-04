<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@  page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Submitted Info</title>
</head>
<body>
<%
  
	String a,b,c,d;
     a = request.getParameter("uname");
     b = request.getParameter("uemail");
     c = request.getParameter("upass");
     d = request.getParameter("upassw");
   
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankproj","root","Krishna@08");
     PreparedStatement ps=con.prepareStatement("insert into users (uname,uemail,upass,upassw) values('"+a+"','"+b+"','"+c+"','"+d+"')");
     if(c.equals(d)){
     ps.executeUpdate();
     out.println("<script>");
     out.println("alert('Registration Successful')");
     out.println("window.location.href='index.html'");
     out.println("</script>");
     }
     else{
    	 out.println("<script>");
         out.println("alert('Password doesnot match')");
         out.println("window.location.href='index.html'");
         out.println("</script>"); 
     }
   
    
    
%>
 
</body>
</html> 
