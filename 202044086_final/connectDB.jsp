<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- Connection, MySQL 연결 -->
<%
	Connection conn = null;
	
	String jdbcDriver = "jdbc:mysql://localhost:3306/jsppj?"+
			"useSSL=false&serverTimezone=UTC";
	String user = "root";
	String password = "rootpw";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(jdbcDriver, user, password);

%>
</body>
</html>