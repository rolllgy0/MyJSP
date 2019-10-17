<%@ page import="com.kb.org.member.MemberVO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<%@ include file="head.jsp" %>
</head>
<body>
	<div class="container">
		<jsp:include page="menu.jsp"/>
		<!-- body -->
		<div class="row">
			<div class="col-xs-9">
				<table class="table">
					<tr>
						<td>순번</td>
						<td>아이디</td>
						<td>비밀번호</td>
						<td>이름</td>
						<td>성별</td>
						<td>가입일</td>
					</tr>
					<%
// 						@SuppressWarnings("all")
// 						List<MemberVO> list = (List)request.getAttribute("myList");
// 						for(MemberVO vo : list)
// 							out.println(vo.getName());
					%>
					<c:forEach items="${myList}" var="i">
						<tr>
							<td>${i.seq}</td>
							<td>${i.id}</td>
							<td>${i.pwd}</td>
							<td>${i.name}</td>
							<td>${i.gender}</td>
							<td>${i.joindate}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="col-xs-3">
				<button type="button" class="btn" onclick="location.href='memberInsert.do';">회원등록</button>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					<c:forEach begin="1" end="${membercnt}" var="i">
						<li class="page-item"><a class="page-link" href="${path}/member.do?pageNum=${i}">${i}</a></li>
					</c:forEach>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
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