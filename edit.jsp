<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<style>
@import url('https://fonts.googleapis.com/css?family=PT+Sans');

body{
  background: #fff;
  font-family: 'PT Sans', sans-serif;
}
h2{
  padding-top: 1.5rem;
}
a{
  color: #333;
}
a:hover{
  color: #da5767;
  text-decoration: none;
}
.card{
  border: 0.40rem solid #f8f9fa;
  top: 10%;
}
.form-control{
  background-color: #f8f9fa;
  padding: 20px;
  padding: 25px 15px;
  margin-bottom: 1.3rem;
}

.form-control:focus {

    color: #000000;
    background-color: #ffffff;
    border: 3px solid #da5767;
    outline: 0;
    box-shadow: none;

}

.btn{
  padding: 0.6rem 1.2rem;
  background: #da5767;
  border: 2px solid #da5767;
}
.btn-primary:hover {

    
    background-color: #df8c96;
    border-color: #df8c96;
  transition: .3s;

}
</style>
</head>
<body>
<%
int p=Integer.parseInt(request.getParameter("x"));
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankproj","root","Krishna@08");
 PreparedStatement ps=con.prepareStatement("Select * from users where id='"+p+"'");
 ResultSet rs=ps.executeQuery();
 while(rs.next()){
	%>
	
	<div class="container">
  <div class="row justify-content-center">
  <div class="col-md-5">
   <div class="card">
     <h2 class="card-title text-center">Edit <a href="http://opensnippets.com">Form</a></h2>
      <div class="card-body py-md-4">
       <form _lpchecked="1" action="UpdateData.jsp" method="post">
       <div class="form-group">
             <input type="hidden" value="<%=rs.getInt(1) %>" name="id" class="form-control" id="name" placeholder="Name">
        </div>
          <div class="form-group">
             <input type="text" value="<%=rs.getString(2) %>" name="uname" class="form-control" id="name" placeholder="Name">
        </div>
        <div class="form-group">
             <input type="text" value="<%=rs.getString(3) %>" name="uemail" class="form-control" id="email" placeholder="Email">
                            </div>
                            
                          
   <div class="form-group">
     <input type="text" value="<%=rs.getString(4) %>" name="upass" class="form-control" id="password" placeholder="Password">
   </div>
   <div class="form-group">
      <input type="text" value="<%=rs.getString(5) %>" name="upassw" class="form-control" id="confirm-password" placeholder="confirm-password">
   </div>
    <center><div class="d-flex flex-row align-items-center justify-content-between">
      
                               <button class="btn btn-primary" type="submit">Update</button>
          </div></center>
       </form>
     </div>
  </div>
</div>
</div>
</div>
<%	 
 }
 
%>
</body>
</html>
