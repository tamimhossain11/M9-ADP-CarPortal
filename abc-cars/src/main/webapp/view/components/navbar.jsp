<nav class="navbar navbar-expand-lg sticky-top p-0" style="background:linear-gradient(to right, #0d19a3 0%, #15db95 100%)">
  <div class="container">
  <img class="image-about" src="/images/pic/carlogo.png" style="width:220px" />

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav" >
      <ul class="navbar-nav ms-auto me-0 me-lg-auto fw-semibold" >
        <li class="nav-item me-0 me-lg-3"  >
          <a class="nav-link" href="<%= request.getContextPath() %>/"  ><i class="fa fa-home" aria-hidden="true" style="color:#fff" ></i> Home</a>
        </li>
          <li class="nav-item me-0 me-lg-3">
          <a class="nav-link" href="<%= request.getContextPath() %>/about-us"><i class="fa fa-star" aria-hidden="true" style="color:#fff"></i> About Us</a>
        </li>
         <li class="nav-item me-0 me-lg-3">
          <a class="nav-link" href="<%= request.getContextPath() %>/contact-us"><i class="fa fa-phone" aria-hidden="true" style="color:#fff"></i> Contact</a>
        </li>
              
        <li class="nav-item me-0 me-lg-3">
          <a class="nav-link" href="<%= request.getContextPath() %>/cars"><i class="fa fa-car" aria-hidden="true" style="color:#fff"></i> Cars</a>
        </li>
          <li class="nav-item me-0 me-lg-3">
          <a class="nav-link" href="<%= request.getContextPath() %>/user/post-car"><i class="fa fa-shopping-cart" aria-hidden="true" style="color:#fff"></i> Sell a Car</a>
        </li>
      </ul>

      <!-- Login & Logout -->
      <security:authorize access="!isAuthenticated()">
        <div class="nav-button d-flex flex-column flex-lg-row">
          <a href="<%= request.getContextPath() %>/login" class="btn me-0 me-lg-3 mb-3 mb-lg-0" style="background-color:#E0E0E0  ">Login</a>
          <a href="<%= request.getContextPath() %>/register" class="btn  mb-3 mb-lg-0" style="background-color:#fff ">Register</a>
        </div>
      </security:authorize>

      <!-- User Menu -->
      <security:authorize access="isAuthenticated()">
        <ul class="navbar-nav fw-semibold">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <div class="nav-account me-2">
                <!-- Profile Picture -->
                <c:if test="${profileLog.profilePicture == null}">
                  <img src="/images/user/user-default.png" alt="Profile Picture" />
                </c:if>
                <c:if test="${profileLog.profilePicture != null}">
                  <img src="data:${profileLog.profilePicture.fileType};base64,${profileLog.profilePicture.image}" alt="Profile Picture" />
                </c:if>
              </div>
              ${profileLog.firstName}
            </a>
            <ul class="dropdown-menu">
              <li>
                <a class="dropdown-item" href="<%= request.getContextPath() %>/user"><i class="fa-solid fa-user"></i> Profile</a>
              </li>
              <li>
                <a class="dropdown-item" href="<%= request.getContextPath() %>/user/my-posted-car"><i class="fa-solid fa-car"></i> My Posted Car</a>
              </li>
              <li>
                <a class="dropdown-item" href="<%= request.getContextPath() %>/user/test-drive"><i class="fa-regular fa-calendar-check"></i> Appointment</a>
              </li>
              <!-- Admin Dashboard -->
              <security:authorize access="hasRole('ADMIN')">
                <li>
                  <a class="dropdown-item" href="<%= request.getContextPath() %>/admin/dashboard"><i class="fa-solid fa-gauge-high"></i> Dashboard </a>
                </li>
              </security:authorize>

              <li class="dropdown-divider"></li>
              <li>
                <a class="dropdown-item" href="<%= request.getContextPath() %>/logout">
                  <button class="nav-logout btn btn-info">Logout</button>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </security:authorize>
    </div>
  </div>
</nav>
