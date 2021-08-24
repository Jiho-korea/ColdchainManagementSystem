<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet" />
<title>Home</title>
</head>
<body id="page-top">
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">ColdChain Management
				System</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">모니터링</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">온도
							조절</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 메인 화면 -->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="assets/img/factory.png"
				alt="..." />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Coldchain
				Management</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">콜드 체인이란?</p>
			<p>냉동·냉장에 의하여 저온으로 신선도를 유지해야 하는 어류·육류·청과물 등의 식료품을 생산지로부터 소비지까지
				유통시키는 체계</p>
		</div>
	</header>

	<!-- 모니터링-->
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">모니터링</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<div class="row justify-content-center">

				<!-- 제 1 공장 -->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal1">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/factory1.png"
							alt="..." />
					</div>
				</div>

				<!-- 제 2 공장 -->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal2">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/factory2.png"
							alt="..." />
					</div>
				</div>

				<!-- 제 3 공장 -->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal3">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/factory3.png"
							alt="..." />
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 온도 조절 -->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">온도
				조절</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<div class="row justify-content-center">

				<!-- 제 1 공장 -->
				<div class="col-md-6 col-lg-4 mb-5">
					<label for="name">제 1 공장 기준 온도 <c:if
							test="${sessionScope.lowest != null }"> 
							/ ${lowest } ~ ${highest }
						</c:if> <c:if test="${sessionScope.lowest == null }"> 
							/ 0 ~ 50
						</c:if>
					</label><br> <br>
					<form action="${pageContext.request.contextPath}/control"
						method="post">
						<div class="col-md-6 col-lg-6 mb-5">
							<input type="text" class="form-control" name="lowest"
								placeholder="최하 온도" onfocus="this.placeholder = '기본값 : 0`c'"
								onblur="this.placeholder = '최하 온도'" />
						</div>
						<div class="col-md-6 col-lg-6 mb-5">
							<input type="text" class="form-control" name="highest"
								placeholder="최고 온도" onfocus="this.placeholder = '기본값 : 50`c'"
								onblur="this.placeholder = '최고 온도'" />
						</div>
						<button class="btn btn-primary btn-xl" type="submit">Control</button>
					</form>
				</div>

				<!-- 제 2 공장 -->
				<div class="col-md-6 col-lg-4 mb-5">
					<label for="name">제 2 공장 기준 온도 <c:if
							test="${sessionScope.lowest2 != null }"> 
							/ ${lowest2 } ~ ${highest2 }
						</c:if> <c:if test="${sessionScope.lowest2 == null }"> 
							/ 0 ~ 50
						</c:if>
					</label><br> <br>
					<form action="${pageContext.request.contextPath}/control2"
						method="post">
						<div class="col-md-6 col-lg-6 mb-5">
							<input type="text" class="form-control" name="lowest"
								placeholder="최하 온도" onfocus="this.placeholder = '기본값 : 0`c'"
								onblur="this.placeholder = '최하 온도'" />
						</div>
						<div class="col-md-6 col-lg-6 mb-5">
							<input type="text" class="form-control" name="highest"
								placeholder="최고 온도" onfocus="this.placeholder = '기본값 : 50`c'"
								onblur="this.placeholder = '최고 온도'" />
						</div>
						<button class="btn btn-primary btn-xl" type="submit">Control</button>
					</form>
				</div>

				<!-- 제 3 공장 -->
				<div class="col-md-6 col-lg-4 mb-5">
					<label for="name">제 3 공장 기준 온도<c:if
							test="${sessionScope.lowest3 != null }"> 
							/ ${lowest3 } ~ ${highest3 }
						</c:if> <c:if test="${sessionScope.lowest3 == null }"> 
							/ 0 ~ 50
						</c:if>
					</label><br> <br>
					<form action="${pageContext.request.contextPath}/control3"
						method="post">
						<div class="col-md-6 col-lg-6 mb-5">
							<input type="text" class="form-control" name="lowest"
								placeholder="최하 온도" onfocus="this.placeholder = '기본값 : 0`c'"
								onblur="this.placeholder = '최하 온도'" />
						</div>
						<div class="col-md-6 col-lg-6 mb-5">
							<input type="text" class="form-control" name="highest"
								placeholder="최고 온도" onfocus="this.placeholder = '기본값 : 50`c'"
								onblur="this.placeholder = '최고 온도'" />
						</div>
						<button class="btn btn-primary btn-xl" type="submit">Control</button>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">Freelancer is a free bootstrap theme created by
						Start Bootstrap. The download includes the complete source files
						including HTML, CSS, and JavaScript as well as optional SASS
						stylesheets for easy customization.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">You can create your own custom avatar for the
						masthead, change the icon in the dividers, and add your email
						address to the contact form to make it fully functional!</p>
				</div>
			</div>
			<!-- About Section Button-->
			<div class="text-center mt-4">
				<a class="btn btn-xl btn-outline-light"
					href="https://startbootstrap.com/theme/freelancer/"> <i
					class="fas fa-download me-2"></i> Free Download!
				</a>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						2215 John Daniel Drive <br /> Clark, MO 65243
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Freelancer</h4>
					<p class="lead mb-0">
						Freelance is a free to use, MIT licensed Bootstrap theme created
						by <a href="http://startbootstrap.com">Start Bootstrap</a> .
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2021</small>
		</div>
	</div>
	<!-- Portfolio Modals-->
	<!-- Portfolio Modal 1-->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">제
									1 공장</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Text-->
								<div class="fixed" id="temperatureHistoryList">
									<c:import url="temperatureHistory.jsp" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 2-->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">제
									2 공장</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Text-->
								<div class="fixed" id="temperatureHistoryList2">
									<c:import url="temperatureHistory2.jsp" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 3-->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" aria-labelledby="portfolioModal3" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">제
									3 공장</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Text-->
								<div class="fixed" id="temperatureHistoryList3">
									<c:import url="temperatureHistory3.jsp" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
<!-- Jquery Plugins, main Jquery -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script defer type="text/javascript">
	$(document).ready(function() {
		interval = setInterval(printTemperature, 1500);
		interval = setInterval(printTemperature2, 1500);
		interval = setInterval(printTemperature3, 1500);
	});

	function printTemperature() {
		$.ajax({
			url : "${pageContext.request.contextPath}/factory",
			type : "post",
			dataType : "text",
			contentType : false,
			processData : false,
			cache : false
		}).done(function(result) {
			var html = jQuery('<div>').html(result);
			var contents = html.find("div#temperatureHistory").html();
			$("#temperatureHistoryList").html(contents);
		}).fail(function(jqXHR, textStatus, errorThrown) {
			console.log("에러");
			console.log(jqXHR);
			console.log(textStatus);
			console.log(errorThrown);
		});
	}

	function printTemperature2() {
		$.ajax({
			url : "${pageContext.request.contextPath}/factory2",
			type : "post",
			dataType : "text",
			contentType : false,
			processData : false,
			cache : false
		}).done(function(result) {
			var html = jQuery('<div>').html(result);
			var contents = html.find("div#temperatureHistory2").html();
			$("#temperatureHistoryList2").html(contents);
		}).fail(function(jqXHR, textStatus, errorThrown) {
			console.log("에러");
			console.log(jqXHR);
			console.log(textStatus);
			console.log(errorThrown);
		});
	}

	function printTemperature3() {
		$.ajax({
			url : "${pageContext.request.contextPath}/factory3",
			type : "post",
			dataType : "text",
			contentType : false,
			processData : false,
			cache : false
		}).done(function(result) {
			var html = jQuery('<div>').html(result);
			var contents = html.find("div#temperatureHistory3").html();
			$("#temperatureHistoryList3").html(contents);
		}).fail(function(jqXHR, textStatus, errorThrown) {
			console.log("에러");
			console.log(jqXHR);
			console.log(textStatus);
			console.log(errorThrown);
		});
	}
</script>
</html>
