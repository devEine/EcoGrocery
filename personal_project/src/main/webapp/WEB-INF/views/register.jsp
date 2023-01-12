<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@include file ="include/header.jsp" %>
<style>
	<!-- 섹션 크기 -->
	.bg-light{
		height: 1053px;
		padding-top:55px;
		padding-bottom:75px;
	}
	.flex-fill.mx-xl-5.mb-2{
		margin: 0 auto;
		width : 700px;
		padding-right: 7rem;
		padding-left: 7rem;
	}
    <!-- 입력창 -->
	.container.py-4{
		margin: 0 auto;
		width : 503px;
	}
    <!-- 가입하기 -->
	.d-grid.gap-2{
		padding-top: 30px;
	}
    
    <!-- 생년월일 -->
	.bir_yy,.bir_mm,.bir_dd{
		width:160px;
		display:table-cell;
	}
	.bir_mm+.bir_dd, .bir_yy+.bir_mm{
		padding-left:10px;
	}

</style>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#join').submit(function() {
			//alert("알럿!");
			alert($('#user_id2').val());
			if ($('.password2').val() != $('.password').val()) {
				$('.pass2div').html("비밀번호가 다릅니다. 다시 확인하세요.");
				$('.pass2div').focus();
				return false;
			}
			if ($('.password2').val() == $('.password').val()) {
				$('.pass2div').html("비밀번호가 일치합니다.");
			}
			if ($('.password2').val() == '') {
				$('.pass2div').html("비밀번호를 입력하세요.");
			}
			
			//이메일 제어1 - 이메일 중복시 제출 경우
			if ($('#user_id2').val() == '1') {
				alert('사용 불가능한 이메일입니다.');
				return false;
			}
			
			// 이메일 제어 2
			if ($('#user_id').val() == '') {
				alert("이메일을 입력하세요.");
				return false;
			}
			
			//비밀번호 제어
			if ($('#user_pw').val() == '') {
				alert("비밀번호를 입력하세요.");
				return false;
			}
			
			//비밀번호 재확인 제어 
			if ($('#user_pw1').val() == '') {
					alert("비밀번호를 재확인하세요.");
					return false;
			}
			
			// 이름 제어
			if ($('#user_name').val() == '') {
				alert("이름을 입력하세요.");
				return false;
			}	
			
			// 휴대전화 제어 - 중복유무 
			if ($('#user_phone').val() == '') {
				alert("전화번호를 입력하세요.");
				return false;
			}
			
			//휴대전화 제어
			if ($('#user_phone1').val() == '1') {
				alert("사용 불가능한 번호입니다.");
				return false;
			}

			
		}); 
		
		//아이디 중복체크
		$('.idCheck').click(function() {
			//alert($("#user_id").val());
			$.ajax({
				url : "/user/idCheck",
				type : "post",
				dataType : "json",
				data : {
					"user_id" : $("#user_id").val()
				},
				success : function(data) {
					//alert(data);
					if (data == 1) {
						$('#user_id2').val(1);
						alert("사용 불가능한 이메일입니다.");
					}else if (data == 0) {
						$('#user_id2').val(0);
						$("#idCheck").attr("value", "Y");
						alert("사용 가능한 이메일입니다.");
					}
				}
			});
		});
	 
	
	
	//전화번호 중복체크
	$('.phoneCheck').click(function() {
			//alert($("#user_id").val());
			$.ajax({
				url : "/user/phoneCheck",
				type : "post",
				dataType : "json",
				data : {
					"user_phone" : $("#user_phone").val()
				},
				success : function(data) {
					//alert(data);
					if (data == 1) {
						$('#user_phone1').val(1);
						alert("사용 불가능한 번호입니다.");
					} else if (data == 0) {
						$('#user_phone1').val(0);
						$("#phoneCheck").attr("value", "Y");
						alert("사용 가능한 번호입니다.");
					}
				}
			}); 
		});
	});
	

</script>


 <section class="bg-light">
        <div class="container py-4">
            <div class="row align-items-center justify-content-between">
                <a class="navbar-brand h1 text-center" >
                    <span style="font: normal !important;">Sing Up</span>                 
                </a>
            </div>
            <form name="form" action="/user/postRegister" id="join" class="totalform" method="post">
			<div class="form-group">
				<label for="email_address">이메일(Email Address) *</label> <input
					type="email" name="user_id" class="form-control" id="user_id"
					value="" placeholder=" @를 포함해서 입력하세요."> <input
					type="hidden" id="user_id2"><br>
				<!-- 									<input type="hidden" name="user_id2" id="user_id2"><br> -->
				<button type="button" id="idCheck" value="N" class="idCheck btn alazea-btn w-80"
					style="width: 100pt; height: 30pt; text-align: center; border: none; border-radius: 20px; background-color:#EDDD5E; margin-bottom: 13px;">이메일
					확인</button>
				<input type="hidden" id="user_id2" value="0">
			</div>
			<div class="form-group has-success">
				<label for="email_address">비밀번호(Password) *</label> <input
					type="password" name="user_pw" class="password form-control"
					id="user_pw" value="" placeholder="비밀번호를 입력하세요."><br>
				<div class="passdiv"></div>
			</div>
			<div class="col-12 mb-4">
				<label for="email_address">비밀번호 재확인(Reconfirm Password) *</label> <input
					type="password" name="user_pw1" class="password2 form-control"
					id="user_pw1" value="" placeholder="비밀번호를 재입력하세요.">
			</div>
			<div class="from-group">
				<label for="phone_number">이름(Name) *</label> <input type="text"
					name="user_name" class="form-control" id="user_name" value=""
					placeholder="이름을 입력하세요."><br>
				<br>
			</div>
			<div class="form-group">
				<label for="phone_number">전화번호(Phone) *</label> <input type="text"
					name="user_phone" class="form-control" id="user_phone" value=""
					placeholder=" (-)제외후 입력하세요."><br> <input type="hidden"
					name="user_phone1" id="user_phone1">
				<button type="button" class="phoneCheck btn alazea-btn w-80"
					id="phoneCheck" value="N"
					style="width: 100pt; height: 30pt; text-align: center; border: none; background: gray; border-radius: 20px; background-color:#EDDD5E; margin-bottom: 20px;">전화번호 확인</button>
				<input type="hidden" name="user_phone1" id="user_phone1" value="0">
			</div>

			<div class="d-grid gap-2">
                    <button class="btn alazea-btn w-120" style="width:360pt;height:40pt;margin:auto; background-color: #5B8C51; color: white; font-size: 20px;">회원가입</button>
                </div>

            </form>
        </div>
    </section>
 

<%@include file ="include/footer.jsp" %>