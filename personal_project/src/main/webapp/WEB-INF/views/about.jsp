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
                    <h1 class="mb-4">Eco-Grocery???<br>?????????????????? ????????? ????????????</h1>
                    <p class="mb-4">???????????? ???????????? ???????????? ??????,????????? ???????????????.<br>
                    				??????????????? ???????????? ????????? ????????????,???????????? ???????????????.<br>
                    				???????????? ????????? ?????? ???????????? ????????? ????????? ???????????????.</p>
                    <div class="row g-5 pt-2 mb-5">
                        <div class="col-sm-6">
                            <img class="img-fluid mb-4" src="${pageContext.request.contextPath}/resources/img/service.png" alt="">
                            <h5 class="mb-3">????????????</h5>
                            <span>??????????????? ?????????<br>???????????? ??????????????? ???????????????.</span>
                        </div>
                        <div class="col-sm-6">
                            <img class="img-fluid mb-4" src="${pageContext.request.contextPath}/resources/img/product.png" alt="">
                            <h5 class="mb-3">????????? ??????</h5>
                            <span>???????????? ??????????????????<br> ????????????????????? ????????? ???????????????.</span>
                        </div>
                    </div>
                    <a class="btn btn-secondary rounded-pill py-3 px-5" href="">???????????? ?????????</a>
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
                            <h2 class="text-white mb-3">??????????????? ????????? ??????</h2>
                            <p class="text-white mb-4">????????? ????????? ???????????? ?????????????????? ????????? ???????????? ????????? ???????????????.</p>
                            <a class="btn btn-secondary rounded-pill py-2 px-4" href="">?????????</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <div class="row g-4 align-items-center">
                        <div class="col-sm-4">
                            <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/banner-2.jpg" alt="">
                        </div>
                        <div class="col-sm-8">
                            <h2 class="text-white mb-3">?????????????????? ????????????</h2>
                            <p class="text-white mb-4">????????? ?????? ????????? ???????????? ????????? ??? ?????? ????????? ??????????????? ???????????????.</p>
                            <a class="btn btn-secondary rounded-pill py-2 px-4" href="">?????????</a>
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
                        <h5>????????? ??????</h5>
                        <p class="text-primary">???????????????</p>
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
                        <h5>????????? ??????</h5>
                        <p class="text-primary">??????</p>
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