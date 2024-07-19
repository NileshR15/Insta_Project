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

String  a,b,c,d,e,f;
 a=request.getParameter("t1");
 b=request.getParameter("t2");
 c=request.getParameter("t3");
 d=request.getParameter("t4");
 e=request.getParameter("t5");
 f=request.getParameter("t6");
 
 Class.forName("org.postgresql.Driver");
 Connection con = DriverManager.getConnection ("jdbc:postgresql://localhost:5432/Insta","postgres","Nilesh@123");

 PreparedStatement ps =con.prepareStatement ("insert into insta_regi(name,usern,pass,cpass,gender,dob)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
 ps.executeUpdate();
 out.println("<script>");
 out.println("alert('Registration Successfully')");
 out.println("window.location.href='login.html' ");  
 out.println("</script>");
 
%>

</body>
</html>