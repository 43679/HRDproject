<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function check(){
	     if(document.form.studNo.value==""){
	    	 alert('입력되지 않았습니다.')
	    	 document.form.studNO.focus();
	     }else{
	    	 document.form.submit();
	     }
}
function Index(){
	 location.href="index.jsp";	  
}

</script>
</head>
<body>
<header>
<%@ include file = "header.jsp" %>
</header>
<nav>
<%@ include file = "nav.jsp" %>
</nav>
<section>
<%@ include file = "dbconn.jsp" %>
<form name ="form" method=post action=".jsp">
<h3>인사 관리 사원 등록 화면</h3>
<table class="in1" border=2 height=800 width=900>
<tr>
 <th>성명</th>
 <td><input type=text name=name size=100></td>
</tr>
<tr>
 <th>사원번호</th>
 <td><input type=text name=name size=100></td>
</tr>
<tr>
 <th>소속부서</th>
 
 <td><select name=dept>
  <option value=1>인사부</option>
  <option value=2>경리부</option>
  <option value=3>홍보부</option>
  <option value=4>경리부</option>
  <option value=5>기획부</option>
   </select></td>
</tr>
<tr>
<th>직급</th>
 
 <td><select name=dept>
 <option value=1>1</option>
 <option value=2>2</option>
 <option value=3>3</option>
 <option value=4>4</option>
 </select><td>
</tr>
<tr>
 <th>직책</th>
 <td><input type=text name=address size=100></td>
 
</tr>
  <th>연락처</th>
<td><input type=text name=phonenumber size=100></td>
</tr>
<tr>
 <td colspan=2 align="center">
 <input type=button class="button" value="등록" onclick="javascirpt:check()">
 <input type=button class="button" value="취소" onclick="jacascript:goIndex()">
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