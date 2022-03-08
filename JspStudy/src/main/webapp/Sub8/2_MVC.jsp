<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>2_MVC</title>
		<!-- 
			날짜 : 2022/03/08
			이름 : 박종우
			내용 : JSP MVC(Model2) 실습하기
			
			MVC(Model2) 
			 - MVC는 클라이언트의 요청, 응답, 비지니스 로직 처리를 모듈화한 구조
			 - Controller : 사용자의 요청을 받아 모델(서비스)을 실행, 서비스로 부터 뷰를 받아서 포워드
			 - Model : 컨트롤러의 요청을 받아 비즈니스 로직 처리를 수행하는 모듈, Service와 Dao로 분리()
			 - View : 사용자에게 보여줄 화면(Html), 모델에서 처리한 데이터를 보여주는 모듈 
		 -->
	</head>
	<body>
		<h3>2_MVC(Model2) 실습하기</h3>
		
		<a href="/JspStudy/mvc/hello.do">hello</a>
		<a href="/JspStudy/mvc/welcome.do">welcome</a>
		<a href="/JspStudy/mvc/greeting.do">greeting</a>
	</body>
</html>