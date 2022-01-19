<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>Login - Online Store Matters</title>

<!-- Mobile Specific Metas
  ================================================== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Creative Portfolio Template">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<meta name="author" content="Themefisher">
<meta name="generator" content="Themefisher Kross Template v1.0">
<jsp:include page="important-models/head.jsp"></jsp:include>


</head>
<body>


	<jsp:include page="important-models/header.jsp"></jsp:include>



	<!-- page title -->
	<section class="page-title bg-primary position-relative">
		<div class="container">
			<div class="row">
				<div class="col-12 text-center">
					<h1 class="text-white font-tertiary">Login Area</h1>
				</div>
			</div>
		</div>
		<!-- background shapes -->
		<img src="images/illustrations/page-title.png" alt="illustrations"
			class="bg-shape-1 w-100"> <img
			src="images/illustrations/leaf-pink-round.png" alt="illustrations"
			class="bg-shape-2"> <img
			src="images/illustrations/dots-cyan.png" alt="illustrations"
			class="bg-shape-3"> <img
			src="images/illustrations/leaf-orange.png" alt="illustrations"
			class="bg-shape-4"> <img
			src="images/illustrations/leaf-yellow.png" alt="illustrations"
			class="bg-shape-5"> <img
			src="images/illustrations/dots-group-cyan.png" alt="illustrations"
			class="bg-shape-6"> <img
			src="images/illustrations/leaf-cyan-lg.png" alt="illustrations"
			class="bg-shape-7">
	</section>
	<!-- /page title -->

	<!-- contact -->
	<section class="section section-on-footer"
		data-background="images/backgrounds/bg-dots.png">
		<div class="container">
			<div class="row">
				<div class="col-12 text-center">
					<h2 class="section-title">Store Login Form</h2>
				</div>
				<div class="col-lg-8 mx-auto">
					<div class="bg-white rounded text-center p-5 shadow-down">
						<div class="col col-lg-12">
							<form action="LogServlet" method="post">
								<div class="mb-3">
									<input type="email" class="form-control" name="emailme"
										placeholder="Enter Email Id"> <input type="password"
										class="form-control" name="pass" placeholder="Enter password">
								</div>
								<div class="mb-3 form-check">
									<input type="checkbox" class="form-check-input" id="checkMe">
									<label class="form-check-label" for="checkbox1">Remember
										me</label>
								</div>
								<button type="submit" class="btn btn-secondary ">Login</button>
								<p class="clickhere">
									Don't have an account?<a href="register.jsp"> Click here to
										Register</a>
								</p>
								<p style="color: red;">${errMessage}</p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /contact -->

	<!-- footer -->
	<jsp:include page="important-models/footer.jsp"></jsp:include>
	<!-- /footer -->

	<!-- jQuery -->
	<script src="plugins/jQuery/jquery.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="plugins/bootstrap/bootstrap.min.js"></script>
	<!-- slick slider -->
	<script src="plugins/slick/slick.min.js"></script>
	<!-- filter -->
	<script src="plugins/shuffle/shuffle.min.js"></script>

	<!-- Main Script -->
	<script src="js/script.js"></script>

</body>
</html>
