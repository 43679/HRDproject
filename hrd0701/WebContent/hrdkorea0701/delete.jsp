<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function check(){
	if(document.form.name.value==""){
		alert("입력되지 않았습니다.")
		document.form.name.focus();
	}else{
		document.form.submit();
	}
}
function index(){
	location.href="index.jsp";
}
</script>
</head>
</body>
<header>
<%@ include file = "header.jsp" %>
</header>
<nav>
<%@ include file="nav.jsp" %>
</nav>
<section>
<%@ include file = "dbconn.jsp" %>
<form name = "form" method=post action="select_change_process">
<h3>인사관리 퇴사처리 화면</h3>
<table class = "in1" border=2>
<tr>
<th>성명</th>
<td><input type=text name=name size=100></td>
</tr>
<tr>
<th>사원번호</th>
<td><input type=text name=name size=100></td>
</tr><tr>
<td colspan=2 align="center">
 <input type=button class="button" value="삭제" onclick="jacascript:go_selectSub()">
 <input type=button class="button" value="취소" onclick="javascript:check()">
 </td>
</tr>
</table>
</form>
</section>
<footer>
<%@ include file = "footer.jsp" %>
</footer>
</body>
</html>