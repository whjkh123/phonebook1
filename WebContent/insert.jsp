<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="java.util.List"%>

<%
	/* http://localhost:8088/phonebook1/insert.jsp?name=조경환&hp=010-6267-5935&company=02-2665-4439 */
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(name, hp, company);
	
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.dbIsrt(personVo);
	
	response.sendRedirect("./list.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phone Book</title>
</head>
<body>
</body>
</html>