<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- START: navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">
			<img src="img/store.png" alt="logo" width="25" height="25" />
			<span class="mx-1">Shop Inventory</span>
		</a>
		<button
			class="navbar-toggler"
			type="button"
			data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent"
			aria-expanded="false"
			aria-label="Toggle navigation"
		>
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link" aria-current="page" href="./index.jsp">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./about.jsp">About</a>
				</li>
				<li class="nav-item dropdown">
					<a
						class="nav-link dropdown-toggle"
						href="#"
						id="navbarDropdown"
						role="button"
						data-bs-toggle="dropdown"
						aria-expanded="false"
					>
						Support
					</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li>
							<a class="dropdown-item" href="./contact.jsp">Contact Us</a>
						</li>
						<li>
							<a class="dropdown-item" href="./privacy.jsp">Privacy Policy</a>
						</li>
						<li><hr class="dropdown-divider" /></li>
						<li>
							<a class="dropdown-item" href="./terms.jsp">Terms & Conditions</a>
						</li>
					</ul>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./login.jsp">Login</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./register.jsp">Register</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
<!-- END: navbar -->
