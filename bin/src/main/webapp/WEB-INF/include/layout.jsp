<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<title>Itda</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="${R}img/logo1-1.png" rel="icon">
<link href="${R}img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700|Open+Sans:300,300i,400,400i,700,700i" rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="${R}lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="${R}lib/animate/animate.min.css" rel="stylesheet">
<link href="${R}lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="${R}lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="${R}lib/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="${R}css/style.css" rel="stylesheet">

<!-- =======================================================
  Theme Name: Avilon
  Theme URL: https://bootstrapmade.com/avilon-bootstrap-landing-page-template/
  Author: BootstrapMade.com
  License: https://bootstrapmade.com/license/
======================================================= -->

<%-- <!-- websocket -->
<script src="${R}webjars/sockjs-client/sockjs.min.js"></script>
<script src="${R}webjars/stomp-websocket/stomp.min.js"></script> --%>

<%-- <script src="${R}webjars/jquery/jquery.min.js"></script> --%>

<script src="${R}webjars/sockjs-client/sockjs.min.js"></script>

<script src="${R}res/common.js"></script>
<link rel="stylesheet" href="${R}res/common.css">

</head>
<body>

<div id="body">
	
	<tiles:insertAttribute name="menu" />
	<tiles:insertAttribute name="body" />
	
	<div class="margin"></div>
	<div class="margin"></div>
	
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
	
</div>

<!-- JavaScript Libraries -->
<script src="${R}lib/jquery/jquery.min.js"></script>
<script src="${R}lib/jquery/jquery-migrate.min.js"></script>
<script src="${R}lib/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${R}lib/easing/easing.min.js"></script>
<script src="${R}lib/wow/wow.min.js"></script>
<script src="${R}lib/superfish/hoverIntent.js"></script>
<script src="${R}lib/superfish/superfish.min.js"></script>
<script src="${R}lib/magnific-popup/magnific-popup.min.js"></script>

<!-- Contact Form JavaScript File -->
<script src="${R}contactform/contactform.js"></script>

<!-- Template Main Javascript File -->
<script src="${R}js/main.js"></script>

</body>
</html>
