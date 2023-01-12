<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {

var msg = "${msg}";

if(msg != ""){
alert(msg);	
}

});


function fn_search(){
$("#listForm").submit();
return false;
}

</script>

<%@include file ="include/header.jsp" %>


<div class="container">
	<br>
	<h1 class="text-center"><a>고객의 소리함</a></h1>
	<br>
	<br>
	<!-- 검색창 -->
	<form method="get"  id="listForm" action="/contact/boardList">
	<div class="card-header py-3">
		<input type="text" id="searchKeyword" name="searchKeyword" value="${searchKeyword}"
			style="width: 300px; height: 40px;" placeholder="검색어를 입력하세요." /> <a
			href="#" onclick="fn_search();" class="btn btn-primary">검색</a>
	</div>
	<!-- 검색창 -->
	

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
				<th><a href="/contact/boardContent?contact_num=${contactList.contact_num }&contact_name=${contactList.contact_name }&email=${contactList.email }&title=${contactList.title}&content=${contactList.content}">${contactList.title }</a></th>
				<th>${contactList.contact_name }</th>
				<%-- <th>${contactList.contact_date }</th> --%>
				<th><fmt:formatDate pattern="yy-MM-dd" value="${contactList.contact_date }" /></th> 
			</tr>
		</c:forEach>
	</table>
	</form>
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
	<a href="/contact/writeGet" style="float: right; color:var(--dark); font-weight: 500; border: 1px solid; background:#FFE15D; border-color:#FFE15D; border-radius:10px; padding: 7px;">글쓰기</a>
	</div>



<%@include file ="include/footer.jsp" %>