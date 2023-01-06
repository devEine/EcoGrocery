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
                <h1 class="mb-5">고객의 소리함</h1>
            </div>
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h3 class="mb-4">문의사항이 있으신가요?</h3>
                    <p class="mb-4">문의하실 내용을 작성해주세요. 이전 문의내역의 확인을 원하시면 우측의 링크를 클릭하세요. <a href="/contact/boardList">고객의 소리함</a></p>
                    <form action="/contact/writePost" method="post" accept-charset="UTF-8">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
									<input type="hidden" name="contact_date" value="${contact_date }">
                                    <input type="text" class="form-control" id="contact_name" name="contact_name" placeholder="Your Name">
                                    <label for="name">이름</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Your Email">
                                    <label for="email">회원가입 email</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="title" name="title" placeholder="Subject">
                                    <label for="subject">제목</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea class="form-control" placeholder="Leave a message here" id="content" name="content" style="height: 250px"></textarea>
                                    <label for="message">내용을 작성해주세요</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-secondary rounded-pill py-3 px-5" type="submit">문의하기</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <h3 class="mb-4">Contact More</h3>
                    <div class="d-flex border-bottom pb-3 mb-3">
                        <div class="flex-shrink-0 btn-square bg-secondary rounded-circle">
                            <i class="fa fa-map-marker-alt text-body"></i>
                        </div>
                        <div class="ms-3">
                            <h6>본사</h6>
                            <span>123 Street, QC, CANADA</span>
                        </div>
                    </div>
                    <div class="d-flex border-bottom pb-3 mb-3">
                        <div class="flex-shrink-0 btn-square bg-secondary rounded-circle">
                            <i class="fa fa-phone-alt text-body"></i>
                        </div>
                        <div class="ms-3">
                            <h6>Phone</h6>
                            <span>+083 010 3043 0553</span>
                        </div>
                    </div>
                    <div class="d-flex border-bottom-0 pb-3 mb-3">
                        <div class="flex-shrink-0 btn-square bg-secondary rounded-circle">
                            <i class="fa fa-envelope text-body"></i>
                        </div>
                        <div class="ms-3">
                            <h6>Mail</h6>
                            <span>ecoGrocery@gmail.com</span>
                        </div>
                    </div>
                    
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2866916.774247005!2d-78.15947667500001!3d45.435076599999974!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc917fccec32de9%3A0x37bc5893728c5979!2sGroceryeco!5e0!3m2!1sko!2skr!4v1672378691894!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

<%@include file ="include/footer.jsp" %>