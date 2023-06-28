<%@ include file="components/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="components/header.jsp"%>
<link rel="stylesheet" href="/css/contact-us.css" />
</head>
<body style="background-color: #F2F3F4">
	<!-- Navbar -->
	<%@ include file="components/navbar.jsp"%>

	<!-- Main -->
	<main>
		<!-- Hero banner -->
		<div class="container-fluid jumbotron">
			<div class="container">
				<h2 class="pt-5 fw-bolder">Contact Us</h2>
				<br>
				<br>
				<br>
				<br>
				<div class="social-media" align="center">

					<ul>
						<li><i class="fa-solid fa-phone" style="color: #15DB95"></i> +0881098765432<br> 
						<i class="fa fa-map-marker" aria-hidden="true" style="color: #15DB95"></i> Dakha Bangladesh<br>
						<i class="fa-solid fa-envelope"style="color: #15DB95"></i> abccars0101@email.com  </li>
						

					</ul>
				</div>
				<p align="center"></p>


			</div>
		</div>
		<!-- Contact -->
		<div
			class="container mt-4 d-flex justify-content-center flex-column flex-lg-row">
			<div class="contact mb-3" style="background-color: #fff">
				<h3 class="text-center">Ask Question</h3>
				<form action="">
					<label class="form-label">Your name</label> <input type="text"
						class="form-control mb-2" name="name" /> <label
						class="form-label">Email</label> <input type="text"
						class="form-control mb-2" name="email" /> <label
						class="form-label">Message</label>
					<textarea class="form-control" name="message"></textarea>

					<button class="btn btn-info mt-4" type="submit"
						style="width: 938px">SUBMIT</button>
				</form>
			</div>
			<div class="social-media mb-3" style="background-color: #fff">
				<div class="mapouter">
					<div class="gmap_canvas">
						<iframe class="gmap_iframe" frameborder="0" scrolling="no"
							marginheight="0" marginwidth="0"
							src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=Dakha Bangladesh&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
						<a href="https://pdflist.com/" alt="pdflist.com">Pdflist.com</a>
					</div>
					<style>
.mapouter {
	position: relative;
	text-align: right;
	width: 300px;
	height: 400px;
}

.gmap_canvas {
	overflow: hidden;
	background: none !important;
	width: 300px;
	height: 400px;
}

.gmap_iframe {
	width: 600px !important;
	height: 400px !important;
}
</style>
				</div>
			</div>
		</div>
	</main>

	<!-- Footer -->
	<%@ include file="components/footer.jsp"%>
</body>
</html>
