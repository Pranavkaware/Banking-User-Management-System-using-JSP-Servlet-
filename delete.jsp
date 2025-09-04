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
int i;
i=Integer.parseInt(request.getParameter("x"));
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankproj","root","Krishna@08");
 PreparedStatement ps=con.prepareStatement("Delete from users where id='"+i+"'");
 ps.executeUpdate();
 out.println("<script>");
 out.println("alert('Deletion Successful')");
 out.println("window.location.href='dash.jsp'");
 out.println("</script>");
%>
</body>
</html>
