<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{width:100%; }
	h3,h4{text-align:center;}
	#left{width:30%;}
	iframe:first-child{width:100%; height:100px; }
	iframe:last-child{width:100%; height:400px;}
	
	tr:nth-child(2) {
	height: 400px;
}
</style>
</head>
<body>
<h3>0420과제_박지은 </h3>
<table border="1">
	<tr>
		<td colspan ="2">
		<!-- 메인페이지에 다른 페이지를 포함.  -->
		<jsp:include page="top.jsp"  />
		</td>
	</tr>
	<tr>
		<td id="left">
		<iframe src="left.jsp">
		left.jsp
		</iframe>
		</td>
		<td>
		<iframe src = "center.jsp" >
		center.jsp
		</iframe>
		</td>
	</tr>
	<tr>
		<td colspan ="2">
		<jsp:include page="footer.jsp"  />
		</td>
	</tr>
		
	
</table>
</body>
</html>