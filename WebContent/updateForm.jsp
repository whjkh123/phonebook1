<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
	int personId = Integer.parseInt(request.getParameter("id"));

	PhoneDao phoneDao = new PhoneDao();
	PersonVo personVo = phoneDao.getPerson(personId);// 특정 ID에 해당하는 Person 정보
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>조경환 전화번호 리스트</h1>

	<p>
		수정화면입니다.<br> 아래 항목을 수정하고 "수정" 버튼을 클릭하세요.
	</p>
	<form action="./update.jsp" method="get">
		이름(name): <input type="text" name="name" value="<%=personVo.getName()%>"><br>
		핸드폰(hp): <input type="text" name="hp" value="<%=personVo.getHp()%>"><br>
		회사(company): <input type="text" name="company" value="<%=personVo.getCompany()%>"><br>
		
		코드(id): <input type="hidden" name="id" value="<%=personVo.getPerson_id()%>">

		<button type="submit">수정</button>
	</form>



</body>
</html>