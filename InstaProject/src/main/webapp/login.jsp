<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.*" %>
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

Class.forName("org.postgresql.Driver");
Connection con = DriverManager.getConnection ("jdbc:postgresql://localhost:5432/Insta","postgres","Nilesh@123");

PreparedStatement ps =con.prepareStatement("Select * from insta_regi where usern='"+x+"' and pass='"+y+"' ");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	HttpSession s1 = request.getSession();
	s1.setAttribute("nn", x);
	out.println("<script>");
	out.println("alert('Login Succesfully')");
	out.println("window.location.href='dash.jsp'");
	out.println("</script>");
}
else
{
	out.println("<script>");
	out.println("alert('Login Fail')");
	out.println("window.location.href='login.html'");
	out.println("</script>");

}

%>

</body>
</html>