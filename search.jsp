<%@ page language="java" contentType="text/html; charset=UTF-8"
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
String x=request.getParameter("t1");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankproj","root","Krishna@08");
PreparedStatement ps=con.prepareStatement("Select * from users where uname='"+x+"'");
ResultSet rs=ps.executeQuery();
%>
</body>
</html>
