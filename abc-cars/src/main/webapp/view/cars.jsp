<%@ include file="components/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="components/header.jsp"%>
<link rel="stylesheet" href="/css/cars.css" />
</head>
<body>
	<!-- Navbar -->
	<%@ include file="components/navbar.jsp"%>

	<!-- Main -->
	<main>

		<div class="container pt-5">
			<form action="<%=request.getContextPath()%>/cars" id="searchForm"
				class="d-flex">
				<input class="form-control" type="text" name="keyword" required
					placeholder="Search by Make, Model, or Year"
					style="background-color: #F2F3F4" />
				<button type="submit" class="btn btn-light">
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
			</form>
			<br> <br>
			<aside class="sidebar-car me-sm-4 pt-3">
				<ul class="fw-semibold">
					<li class="ms-1" align="center" style="font-size: 3rem;"><a
						href="<%=request.getContextPath()%>/cars"><i
							class="fa-solid fa-car"></i> ABC CARS</a></li>
					<li><a href="<%=request.getContextPath()%>/user/post-car">
							<button class="btn btn-info">Post a car</button>
					</a></li>
					<li>
						<p class="ms-1">
							<i class="fa-solid fa-dollar-sign"></i> Price Range
						</p>
						<form action="<%=request.getContextPath()%>/cars">
							<input class="form-control mb-3 ps-4 pe-0" type="number"
								name="low" required placeholder="Minimum price"
								style="background-color: #F2F3F4" /> <input
								class="form-control mb-3 ps-4 pe-0" type="number" name="high"
								required placeholder="Maximum price"
								style="background-color: #F2F3F4" />
							<button type="submit" class="btn btn-secondary">Search</button>
						</form>
					</li>
				</ul>
			</aside>
			<div class="d-flex">
				<!-- Sidebar -->


				<!-- Car List -->
				<div class="car-list">
					<!-- Search -->

					<!-- List -->
					<div class="mt-4 row">
						<c:if test="${!listCar.isEmpty()}">
							<c:forEach items="${listCar}" var="car">
								<c:if test="${car.status.equals('ACTIVE')}">
									<div class="col-12 col-md-6 col-md-4 col-lg-3 mb-3">
										<div class="card">
											<img class="card-img-top"
												src="data:${car.carPicture.fileType};base64,${car.carPicture.image}"
												alt="${car.make}" />
											<div class="card-body">
												<p class="car-details fw-bold">${car.make}${car.model}
													${car.year}</p>
												<p class="car-price">$${car.price}</p>
												<a
													href="<%= request.getContextPath() %>/cars/${car.make}/${car.model}/${car.year}/${car.idCar}">
													<button class="btn btn-info">Car Details</button>
												</a>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</c:if>
						<c:if test="${listCar.isEmpty()}">
							<h4 class="fw-bold text-secondary text-center">Oops! We can't seem to find the car you're looking for</h4>
						</c:if>
					</div>

				</div>


			</div>
		</div>

	</main>

	<!-- Footer -->
	<%@ include file="components/footer.jsp"%>
</body>
</html>
