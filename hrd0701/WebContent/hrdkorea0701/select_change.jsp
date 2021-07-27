<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<body>
<header>
<%@ include file = "header.jsp" %>
</header>
<nav>
<%@ include file="nav.jsp" %>
</nav>
<section>
<%@ include file = "dbconn.jsp" %>
<form name = "form" method=post action="select_change_process">
<h3>인사관리 사원정보변경 화면</h3>
<table class = "in1" border=2 height=600px; width=600px;>
<tr>
<th>성명</th>
<td><input id=t1 type=text name=name size=50></td>
</tr>
<tr>
<th>사원번호</th>
<td><input id=t1 type=text name=name size=50></td>
</tr>
<tr>
<th>소속부서</th>

<td><select name=dept border=2 height=600px; width=600px;>
<option value=1>경리부</option>
<option value=2>홍보부</option>
<option value=3>인사부</option>
<option value=4>기획부</option>
<option value=5>영업부</option>
</select></td>
</tr>
<tr>
<th>직급</th>

<td><select name=dept>
<option value=1>1급</option>
<option value=2>2급</option>
<option value=3>3급</option>
<option value=4>4급</option>
</select></td>
</tr>
<th>직책</th>
<td><input type=text name=name size=100></td>
</tr>
<tr>
<th>연락처</th>
<td><input type=text name=name size=100></td>
</tr>
<tr>
<td colspan=2 align="center">
 <input type=button class="button" value="변경" onclick="jacascript:go_selectSub()">
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



















