<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function addSchool(){
	     location.href="";
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
<h3>직원 정보 조회</h3>
<table class="in2" border=2>
<tr>
 <th>no</th>
 <th>성명</th>
 <th>사번</th>
 <th>직급</th>
 <th>직책</th>
 <th>연락처</th>
 <th>소속부서</th>
</tr>
<%
ResultSet rs = null;
PreparedStatement pstmt = null;

try{
	String sql = "select * from insa0701";
	pstmt = conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	while(rs.next()){
		String studNo = rs.getString("studNo");
		String name = rs.getString("name");
		String number = rs.getString("number");
		String rank = rs.getString("rank");
		String position = rs.getString("position");
		String phonenumber = rs.getString("phonenumber");
		String department = rs.getString("department");
		
		%>
		<tr>
		<td><%=studNo %></td>
		<td><%=name %></td>
		<td><%=number %></td>
		<td><%=rank %></td>
		<td><%=position %></td>
		<td><%=phonenumber %></td>
		<td><%=department %></td>
		</tr>
		<%
	}
}catch(SQLException e){
	System.out.println("조회 실패");
	
}

%>
</table>
<table align=center>
<tr>

</tr>
</table>
</section>
<footer>
<%@ include file = "footer.jsp" %>
</footer>
</body>
</html>






