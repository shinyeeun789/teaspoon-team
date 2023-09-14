<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title> 커뮤니티 </title>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <jsp:include page="../setting/head.jsp" />

    <style>
        h1 { font-size: 40pt; }
        h3 { font-size: 20pt; }
    </style>
</head>
<body>
<%@ include file="../layout/header.jsp"%>

<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> 글 등록하기 </h1>
        </div>
    </div>
    <!-- background shapes -->
    <img src="${path}/resources/images/illustrations/page-title.png" alt="illustrations" class="bg-shape-1 w-100">
    <img src="${path}/resources/images/illustrations/leaf-pink-round.png" alt="illustrations" class="bg-shape-2">
    <img src="${path}/resources/images/illustrations/dots-cyan.png" alt="illustrations" class="bg-shape-3">
    <img src="${path}/resources/images/illustrations/leaf-orange.png" alt="illustrations" class="bg-shape-4">
    <img src="${path}/resources/images/illustrations/leaf-yellow.png" alt="illustrations" class="bg-shape-5">
    <img src="${path}/resources/images/illustrations/leaf-cyan-lg.png" alt="illustrations" class="bg-shape-7">
</section>

<section class="section">
    <form action="${path}/community/insert.do" method="post" class="container">
        <div class="columns">
            <div class="column is-one-quarter">
                <label for="cate"> 카테고리 </label>
                <select name="cate" id="cate" class="input">
                    <c:forEach var="category" items="${categories}">
                        <option value="${category.cate}">${category.cateName}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="column">
                <label for="title"> 제목 </label>
                <input type="text" id="title" name="title" class="input">
            </div>
        </div>
        <div class="columns">
            <div class="column">
                <label for="content"> 내용 </label>
                <textarea class="textarea" id="content" name="content" cols="30" rows="10"></textarea>
            </div>
        </div>
        <div class="columns">
            <div class="column">
                <input type="submit" class="button is-fullwidth" value="등록하기"/>
            </div>
        </div>
    </form>
</section>

<%@ include file="../layout/footer.jsp"%>

<form action="#">
    <input type="hidden" id="cno" name="cno" value="${detail.cno}">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

<!-- jQuery -->
<script src="${path}/resources/plugins/jQuery/jquery.min.js"></script>
<!-- slick slider -->
<script src="${path}/resources/plugins/slick/slick.min.js"></script>
<!-- filter -->
<script src="${path}/resources/plugins/shuffle/shuffle.min.js"></script>

<!-- Main Script -->
<script src="${path}/resources/js/script.js"></script>
</body>
</html>
