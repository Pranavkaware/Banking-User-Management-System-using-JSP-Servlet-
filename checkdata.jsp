<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String x,y;
x=request.getParameter("t1");
y=request.getParameter("t2");
if(x.equals("Mayur") && y.equals("Mayur@123")){
	out.println("<script>");
	out.println("alert('Login Successful')");
	out.println("window.location.href='dash.jsp'");
	out.println("</script>");
}
else{
	out.println("<script>");
	out.println("alert('Login Unsuccessful')");
	out.println("window.location.href='Login.jsp'");
	out.println("</script>");
}
%>
</body>
</html>
