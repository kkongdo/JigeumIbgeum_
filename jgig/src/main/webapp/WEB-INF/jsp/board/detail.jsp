<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
</head>
<body>
	<h1>상세보기</h1>
	<table>
		<tr>
			<th>게시물 번호</th><td>${dto.brd_id}</td>
		</tr>
		<tr>
			<th>게시물 카테고리</th><td>${dto.brd_category}</td>
		</tr>
		<tr>
			<th>게시물 제목</th><td>${dto.title}</td>
		</tr>
		<tr>
			<th>게시물 작성자</th><td>${dto.mem_id}</td>
		</tr>
		<tr>
			<th>게시물 작성일</th><td>${dto.brd_date_created}</td>
		</tr>
		<tr>
			<th>게시물 조회수</th><td>${dto.brd_view}</td>
		</tr>
		<tr>
			<th>게시물 내용</th>
		</tr>
		<tr>
			<td colspan="2"><textarea rows="3" cols="60">${dto.brd_content}</textarea></td>
		</tr>
		<tr>
			<th>게시물 신고</th><td>${dto.brd_declaration}</td> <button>신고</button>
		</tr>
		<tr>
			<th>게시물 추천</th><td>${dto.brd_suggestion}</td> <button>추천</button>
		</tr>
	</table>
	
	<a href="board_update_form?no=${dto.brd_id}">게시물 수정</a> <br>
	<a href="board_delete_form?no=${dto.brd_id}">게시물 삭제</a> <br>
	<a href="board_list">게시물 목록</a> <br>
</body>
</html>