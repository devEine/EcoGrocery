<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@include file ="include/header.jsp" %>

    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <p class="section-title bg-white text-center text-primary px-3">Contact Us</p>
                <h1 class="mb-5">고객의 소리함 No: ${contact_num }</h1>
            </div>
            <div class="row g-5">
                <!-- div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h3 class="mb-4">문의사항이 있으신가요?</h3>
                    <p class="mb-4">문의하실 내용을 작성해주세요. 이전 문의내역의 확인을 원하시면 우측의 링크를 클릭하세요. <a href="/contact/boardList">고객의 소리함</a></p>
 -->                    <form action="/contact/boardUpdatePost?contact_num=${contact_num }" method="post">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="contact_name" name="contact_name" value="${contact_name }" >
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="email" name="email"  value="${email }" placeholder="Your Email">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="title" name="title" value="${title}" placeholder="Subject" >
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea class="form-control" placeholder="Leave a message here"  id="content" name="content" style="height: 250px" >${content }
                                    </textarea>
                                </div>
                            </div>
                            <div class="col-12" style="text-align:  center;">
                                <button class="btn btn-secondary rounded-pill py-3 px-5" type="submit">수정하기</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <!-- Contact End -->

<%@include file ="include/footer.jsp" %>