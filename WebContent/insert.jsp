<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
	/* http://localhost:8088/phonebook1/insert.jsp?name=%EC%A1%B0%EA%B2%BD%ED%99%98&hp=010-6267-5935&company=02-2665-4439 */
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(name, hp, company);
	
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.dbIsrt(personVo);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phone Book</title>
</head>
<body>

	등록요청 완료

</body>
</html>