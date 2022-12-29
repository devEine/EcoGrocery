<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@include file ="include/header.jsp" %>


    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5">
            <h1 class="display-3 text-white mb-4 animated slideInDown">About 'Eco-Grocery'</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
<!--                     <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">About</li> -->
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5 align-items-end">
                <div class="col-lg-6">
                    <div class="row g-2">
                        <div class="col-6 position-relative wow fadeIn" data-wow-delay="0.7s">
                            <div class="about-experience bg-secondary rounded">
                                <h1 class="display-1 mb-0">25</h1>
                                <small class="fs-5 fw-bold">Years Experience</small>
                            </div>
                        </div>
                        <div class="col-6 wow fadeIn" data-wow-delay="0.1s">
                            <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/service-1.jpg">
                        </div>
                        <div class="col-6 wow fadeIn" data-wow-delay="0.3s">
                            <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/service-2.jpg">
                        </div>
                        <div class="col-6 wow fadeIn" data-wow-delay="0.5s">
                            <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/service-3.jpg">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <p class="section-title bg-white text-start text-primary pe-3">About Us</p>
                    <h1 class="mb-4">Eco-Grocery는<br>환경친화적인 일상을 꿈꿉니다</h1>
                    <p class="mb-4">동물권을 보장하는 자연방생 육류,계란을 판매합니다.<br>
                    				환경오염을 지양하는 친환경 주방도구,클린바를 제작합니다.<br>
                    				재사용이 가능한 에코 프랜들리 가방과 소품을 판매합니다.</p>
                    <div class="row g-5 pt-2 mb-5">
                        <div class="col-sm-6">
                            <img class="img-fluid mb-4" src="${pageContext.request.contextPath}/resources/img/service.png" alt="">
                            <h5 class="mb-3">상품설명</h5>
                            <span>친환경적인 상품이<br>만들어진 제작과정을 소개합니다.</span>
                        </div>
                        <div class="col-sm-6">
                            <img class="img-fluid mb-4" src="${pageContext.request.contextPath}/resources/img/product.png" alt="">
                            <h5 class="mb-3">친환경 상품</h5>
                            <span>식품에서 생활소품까지<br> 에코프랜들리한 상품을 제공합니다.</span>
                        </div>
                    </div>
                    <a class="btn btn-secondary rounded-pill py-3 px-5" href="">고객문의 게시판</a>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Banner Start -->
    <div class="container-fluid banner my-5 py-5" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/banner.jpg">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.3s">
                    <div class="row g-4 align-items-center">
                        <div class="col-sm-4">
                            <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/banner-1.jpg" alt="">
                        </div>
                        <div class="col-sm-8">
                            <h2 class="text-white mb-3">최고품질의 친환경 식품</h2>
                            <p class="text-white mb-4">세계적 수준의 동물복지 사육환경으로 제작된 동물복지 식품을 판매합니다.</p>
                            <a class="btn btn-secondary rounded-pill py-2 px-4" href="">더보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <div class="row g-4 align-items-center">
                        <div class="col-sm-4">
                            <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/banner-2.jpg" alt="">
                        </div>
                        <div class="col-sm-8">
                            <h2 class="text-white mb-3">환경친화적인 생활용품</h2>
                            <p class="text-white mb-4">일상의 작은 변화를 생활에서 실천할 수 있는 친환경 생활용품을 판매합니다.</p>
                            <a class="btn btn-secondary rounded-pill py-2 px-4" href="">더보기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->



    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <p class="section-title bg-white text-center text-primary px-3">Our Team</p>
                <h1 class="mb-5">Eco-Grocery's Staff</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item rounded p-4">
                        <img class="img-fluid rounded mb-4" src="${pageContext.request.contextPath}/resources/img/do.jpg" alt="">
                        <h5>코빨간 도영</h5>
                        <p class="text-primary">랑이브리더</p>
                        <div class="d-flex justify-content-center">
                            <a class="btn btn-square btn-outline-secondary rounded-circle mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square btn-outline-secondary rounded-circle mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square btn-outline-secondary rounded-circle mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item rounded p-4">
                        <img class="img-fluid rounded mb-4" src="${pageContext.request.contextPath}/resources/img/team-2.jpg" alt="">
                        <h5>Doris Jordan</h5>
                        <p class="text-primary">Veterinarian</p>
                        <div class="d-flex justify-content-center">
                            <a class="btn btn-square btn-outline-secondary rounded-circle mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square btn-outline-secondary rounded-circle mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square btn-outline-secondary rounded-circle mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item rounded p-4">
                        <img class="img-fluid rounded mb-4" src="${pageContext.request.contextPath}/resources/img/jung.jpg" alt="">
                        <h5>매서운 이네</h5>
                        <p class="text-primary">백수</p>
                        <div class="d-flex justify-content-center">
                            <a class="btn btn-square btn-outline-secondary rounded-circle mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square btn-outline-secondary rounded-circle mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square btn-outline-secondary rounded-circle mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->

<%@include file ="include/footer.jsp" %>