<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<jsp:include page="head.jsp"/>
</head>
<body>
	<div class="container">
		<jsp:include page="menu.jsp"/>
		<!-- body -->
		<div class="row">
			<div class="col">
				<%
					@SuppressWarnings("all")
					HashMap<String, String> hm = (HashMap)request.getAttribute("hm");
					Set<String> keys = hm.keySet();
					for(String key : keys)
						out.println(key + hm.get(key) + "<br/>");
				%>
				<c:forEach items="${hm}" var="i">
					${i}<br/>
				</c:forEach>
			</div>
		</div><hr/>
		<!-- footer -->
		<div class="row">
			<div class="col text-center" style="color: Lightgray;">
				copy right 멍구 
			</div>
		</div>
	</div>
</body>
</html>