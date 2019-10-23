<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ page import com.kb.org.member.MemberVO %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
// 	MemberVO mv = (MemberVO) request.getAttribute("row");
// 	out.println(mv.getId());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정</title>
<%@ include file="head.jsp" %>
</head>
<body>
	<div class="container">
		<jsp:include page="menu.jsp"/>
		<!-- body -->
		<div class="row">
			<div class="col-xs-12">
				<form action="${path}/memberUpdateProc.do">
					<input type="hidden" name="seq" value="${param.seq}"/>
					<div class="form-group">
						<label for="id">ID:</label>
						<input type="text" class="form-control" id="id" name="id" value="${row.id}">
					</div>
					<div class="form-group">
						<label for="name">Name:</label>
						<input type="text" class="form-control" id="name" name="name" value="${row.name}">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label>
						<input type="password" class="form-control" id="pwd" name="pwd" value="${row.pwd}">
					</div>
					<div class="form-group">
						<label for="gender">Gender:</label>
						<input type="text" class="form-control" id="gender" name="gender" value="${row.gender}">
					</div>
					<button type="submit" class="btn btn-default">Update</button>
				</form>
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