<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>main.jsp</h1>

	<%
		String id = (String) session.getAttribute("id");

		if (id == null) {
			response.sendRedirect("./MemberLogin.me");
		} else {
			out.print(id + "님이 로그인했습니다.");
		}
	%>

	<input type="button" value="로그아웃" onclick="location.href='./MemberLogout.me'">
	<br>


	<a href="./MemberInfo.me">회원정보조회</a>
	<br>
	<a href="./MemberUpdate.me">회원정보수정</a>
	<br>
	<a href="./MemberDelete.me">회원정보삭제</a>
	<br>
	<a href="./GoodsList.go">상품목록가기</a>

	<!-- id가 admin이면 회원목록이 보이도록 하자. -->
	<%
		if (id != null) {
			if (id.equals("admin")) {
	%>
	<a href="./MemberList.me">회원목록</a>
	<%
			}
		}
	%>

</body>
</html>