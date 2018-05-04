<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="<%=application.getContextPath()%>/lib/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#logoutBtn").click(function(){
			if(confirm("정말 로그아웃 할래?")){
				location.href="<%=application.getContextPath()%>/logout";
			}else{
				alert("응 더 놀다가~~");
			}
		});
	})
</script>

</head>
<body>
<%
		Object id = session.getAttribute("userId");
		if(id==null){
			%>
				<form method="post" action="<%=application.getContextPath()%>/login">
					ID : <input type="text" name="userId" /><br />
					PW : <input type="password" name="userPwd" /></br/> 
					<input type="submit" value="로그인" />
				</form>
			<%
		}else{
			long time = Long.valueOf(String.valueOf(session.getAttribute("time")));
			SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
			String today = date.format(new Date(time));
			
			out.print("<b>"+ id+ "님 로그인중...</b><br>");
			out.print("<b>접속시간 : "+ today+"</b><br>");
	
			%>
				<input type="button"  value="로그아웃" id="logoutBtn">
			<%
	
		}
	%> 
</body>
</html>