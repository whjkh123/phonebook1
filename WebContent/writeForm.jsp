<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phone Book</title>
</head>
<body>

	<h1>조경환 전화번호 등록</h1>

	<p>
		전화번호를 등록하려면<br> 아래 항목을 기입하고 "등록" 버튼을 클릭하세요.
	</p>

	<form action="./insert.jsp" method="get">
		이름(name): <input type="text" name="name"><br>
		핸드폰(hp): <input type="text" name="hp"><br>
		회사(company): <input type="text" name="company"><br>
		
		<button type="submit">등록</button>
	</form>
	
	

</body>
</html>