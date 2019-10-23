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
<script type="text/javascript">
	$(document).ready(function(){
		$(".mytr").css("cursor", "pointer");
		$(".inputbox").click(function(e){
			var seq = $(this).attr("id");
			$("#"+seq).attr("checked", "true");
// 			e.preventDefault();		//기본 이벤트 제거
			e.stopPropagation();	//부모태그 이벤트 제거
		});
		$("td").click(function(){
			var seq = $(this).attr("seq");
			location.href = "memberUpdate.do?seq=" + seq;
		});
	});
	function doDelete(){
// 		var myfrm = document.getElementById("myform");
// 		myfrm.submit();
		var test = confirm("삭제 하시겠습니까?");
		alert("test = " + test);
		if(test){
			$("#myform").attr("action", "memberDelete.do");
			$("#myform").submit();
		}
	}
</script>
</head>
<body>
<form action="" method="get" id="myform">
	<div class="container">
		<jsp:include page="menu.jsp"/>
		<!-- body -->
		<div class="row">
			<div class="col-xs-12">
				<button style="margin: 30px 0;" type="button" class="btn" onclick="location.href='memberInsert.do';">회원등록</button>
				<button style="margin: 30px 0;" type="button" class="btn" onclick="doDelete();">회원삭제</button>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<table class="table">
					<tr>
						<th class="justify-content-center text-center">선택</th>
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
					<c:forEach items="${myList}" var="i" varStatus="k">
<%-- 					<tr><td>${k.index}</td></tr> --%>
						<tr class="mytr" seq="${i.seq}">
							<th class="justify-content-center text-center">
								<input class="inputbox" id="check${i.seq}" type="checkbox" name="seq" value="${i.seq}"/>
							</th>
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
</form>
</body>
</html>