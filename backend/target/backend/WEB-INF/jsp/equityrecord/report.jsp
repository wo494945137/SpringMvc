<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>股权积分展示</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="/static/echarts/css/swiper.min.css">

    <!-- Demo styles -->
    <style>
    html, body {position: relative;height: 100%;}
    body {background-color: #fff;font-family: Helvetica Neue, Helvetica, Arial, sans-serif;font-size: 14px;color:#000;margin: 0;padding: 0;}
    .swiper-container {width: 100%;height: 100%;}
    .swiper-slide {text-align: center;font-size: 20px; color:red; background: #fff url(/static/echarts/img/bg.jpg) no-repeat; background-size:cover;position: relative;display: -webkit-box;display: -ms-flexbox; display: -webkit-flex; display: flex;}
    .swiper-pagination{text-align: right;}
    .swiper-container-horizontal>.swiper-pagination-bullets { width:94%;bottom:3%;}
    .swiper-pagination-bullet{ opacity:1; width:20px; height:20px;background:#ccc;}
    .swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet{margin:0 15px;}
    .swiper-pagination-bullet-active{ background:#fdaf02;}
    .lzy-l { background: #fff; position:absolute; left:1%; top:18%; height:55%; width:48.7%;}
    .lzy-r { background: #fff; position:absolute; right:1%; top:18%; height:55%; width:48.7%;}
     table { border-spacing: 0;}
    .lzy-table {width:100%; height:100%; padding:10px; font-size: 25px;}
    .lzy-table thead tr { background:#4d4d4d; margin:4px 0;}
    .lzy-table thead tr th {color:#fff; height:40px;}
    .lzy-table tbody tr:nth-child(odd) { background:#e6e6e6;}
    .lzy-table tbody tr:nth-child(even) { background:#f1f1f1;}
    .lzy-table tbody tr td {border-top:4px solid #fff; color:#666; font-size: 22px;}

    .btm-info {position:absolute; height:20%; width:100%; bottom:6%; z-index:10;text-align: left;}
    .btm-info h2 {font-size:20px; color:#333; padding-left: 3%}
    .btm-info .btm-left {position:absolute; left:5%; top:18%; font-size:18px; color:#666;}
    .btm-info .btm-middle {position:absolute; left:35%; top:18%; font-size:18px; color:#666;}
    .btm-info .btm-right {position:absolute; left:65%; top:18%; font-size:18px; color:#666;}

    </style>
</head>
<body>
    <!-- Swiper -->
    <div class="swiper-container">
    
       
    	
        <div class="swiper-wrapper">
         <c:forEach var="img" items="${imglist}">    
          <div class="swiper-slide"><img style="width:100%; height:100%" src="${img.imgurl}"/></div>
        </c:forEach>
        ${body}
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
        <!-- Add Arrows -->
        <!-- <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div> -->
    </div>
    
         <!-- 底部信息说明   Start -->
     
     <!-- End -->
    

    <!-- Swiper JS -->
    <script src="/static/echarts/js/swiper.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        //nextButton: '.swiper-button-next',
        //prevButton: '.swiper-button-prev',
        paginationClickable: true,
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: 20000,
        autoplayDisableOnInteraction: false
    });
    </script>
</body>
</html>