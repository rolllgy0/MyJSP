<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gridlayout.jsp</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	.a{
		font-size: 30px;
	}
	.b{
		border: 2px solid DarkCyan;
	}
</style>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-xs-8 a b" style="background-color: Aquamarine; padding: 30px;"><br/>8만큼 차지하는 DIV 영역<br/>8만큼 차지하는 DIV 영역<br/><br/></div>
		<div class="col-xs-4" style="background-color: DarkTurquoise">
			<h3>
				1조 엑셀 프로그램
				2조 음식주문 프로그램
				3조 메일 프로그램
			</h3>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-4" style="background-color: DimGray"><br/>
			<table class="table table-striped table-dark">
				<tr>
					<td>이름</td><td>나이</td><td>성별</td>
				</tr>
				<tr>
					<td>이름</td><td>나이</td><td>성별</td>
				</tr>
				<tr>
					<td>이름</td><td>나이</td><td>성별</td>
				</tr>
				<tr>
					<td>이름</td><td>나이</td><td>성별</td>
				</tr>
			</table>
		</div>
		<div class="col-xs-4" style="background-color: LemonChiffon">4만큼 차지하는 DIV 영역</div>
		<div class="col-xs-4" style="background-color: Linen">4만큼 차지하는 DIV 영역</div>
	</div>
	<div class="row">
		<div class="col-xs-3" style="background-color: MediumSeaGreen">3만큼 차지하는 DIV 영역</div>
		<div class="col-xs-3" style="background-color: MediumSpringGreen">3만큼 차지하는 DIV 영역</div>
		<div class="col-xs-3" style="background-color: PaleGreen">3만큼 차지하는 DIV 영역</div>
		<div class="col-xs-3" style="background-color: GreenYellow">3만큼 차지하는 DIV 영역</div>
	</div>
</div>
</body>
</html>