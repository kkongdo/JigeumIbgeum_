<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="UTF-8">
<title>웹게시물 목록</title>
<style>
#content {
 	margin-left: 420px; /* 사이드바 너비 + 여백만큼 오른쪽으로 밀어줍니다. */
    flex-grow: 1; /* 남은 공간을 모두 차지하도록 설정 */
    background-color: #fff; /* 배경색 설정 */
    padding: 20px; /* 내부 여백 설정 */
}
</style>
</head>
<body>
<%@ include file="../include/top_navbar.jsp" %>
<%@ include file="../include/left_navbar.jsp" %>
<div id="content">
	<a href="/jgig/board_insert_form">게시물 등록</a> <br>
	<table>
		<tr>
		<th>번호</th>
		<th>카테고리</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회수</th>
		<c:forEach items="${board_list}" var="brd">
		<tr>
			<td>${brd.brd_id }</td>
			<td>${brd.brd_category }</td>
			<td><a href="board_detail?no=${brd.brd_id}">${brd.title}</a></td>
			<td>${brd.mem_id }</td>
			<td>${brd.brd_date_created }</td>
			<td>${brd.brd_view }</td>
		</tr>
		</c:forEach>
	</table>
	<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">이전</a></li>
    <li class="page-item"><a class="page-link" href="board_list_withPaging?pageNum=1">1</a></li>
    <li class="page-item"><a class="page-link" href="board_list_withPaging?pageNum=2">2</a></li>
    <li class="page-item"><a class="page-link" href="board_list_withPaging?pageNum=3">3</a></li>
    <li class="page-item"><a class="page-link" href="board_list_withPaging?pageNum=4">4</a></li>
    <li class="page-item"><a class="page-link" href="board_list_withPaging?pageNum=5">5</a></li>
    <li class="page-item"><a class="page-link" href="#">다음</a></li>
  </ul>
</nav>
	<h3>total : ${requestScope.total }</h3>
</div>
</body>
</html>