%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int i;
i=Integer.parseInt(request.getParameter("id"));
String a,b,c,d;
a=request.getParameter("uname");
b=request.getParameter("uemail");
c=request.getParameter("upass");
d=request.getParameter("upassw");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankproj","root","Krishna@08");
PreparedStatement ps=con.prepareStatement("Update users set uname='"+a+"',uemail='"+b+"',upass='"+c+"',upassw='"+d+"' where id='"+i+"'");
ps.executeUpdate();
out.println("<script>");
out.println("alert('Updation Successful')");
out.println("window.location.href='dash.jsp'");
out.println("</script>");
%>
</body>
</html>
