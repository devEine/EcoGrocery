<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@include file ="include/header.jsp" %>


<div class="container">
	<br>
	<h1 class="text-center"><a>고객의 소리함</a></h1>
	<br>
	<br>

	<table class="table table-hover table-striped text-center" style="border: 1px solid;">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>작성일자</th>
			</tr>
		
		<c:forEach var="contactList" items="${contactList }">
			<tr>
				<th>${contactList.contact_num }</th>
				<th>${contactList.title }</th>
				<th>${contactList.contact_name }</th>
				<th>${contactList.contact_date }</th>
			</tr>
		</c:forEach>
	</table>
</div>


	<div>
		<ul class="pagination justify-content-center">
			<li><a href="#" style="margin-right:5px; color: gray !important;" class="text-secondary">이전</a></li>
			<li><a href="#" style="margin-right:5px; color: gray !important;" class="text-secondary">1</a></li>
			<li><a href="#" style="margin-right:5px; color: gray !important;" class="text-secondary">2</a></li>
			<li><a href="#" style="margin-right:5px; color: gray !important;" class="text-secondary">3</a></li>
			<li><a href="#" style="margin-right:5px; color: gray !important;" class="text-secondary">다음</a></li>
		</ul>
	</div>
	
	<div style="width: 1435px;  margin-bottom: 100px;">
	<a href="/home/contact" style="float: right; color:var(--dark); font-weight: 500; border: 1px solid; background:#FFE15D; border-color:#FFE15D; border-radius:10px; padding: 7px;">글쓰기</a>
	</div>



<%@include file ="include/footer.jsp" %>