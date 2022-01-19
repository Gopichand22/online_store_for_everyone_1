<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
<title>Super Admin-Online_Store_Matters</title>
<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line	-awesome.min.css">
<link rel="stylesheet" href="css/rootadmin.css">
</head>
<body>
<input type="checkbox" id="nav-toggle">
	<div class="sidebar">
		<div class="sidebar-brand">
			<h2><span class="la la-shopping-bag"></span><span>OnlineStoreMatters</span></h2>
		</div>
		<div class="sidebar-menu">
			<li><a href="dashboard.jsp" class="active"><span class="las la-igloo"></span><span>Dashboard</span></a></li>
			<li><a href="sellers.jsp"><span class="la la-credit-card"></span><span>Sellers List</span></a></li>
			<li><a href="orders.jsp"><span class="la la-igloo"></span><span>Orders</span></a></li>
			<li><a href="stats,jsp"><span class="la la-igloo"></span><span>Statistics</span></a></li>
			<li><a href="manage.jsp"><span class="la la-book"></span><span>Add/Update Accounts</span></a></li>
			<li><a href="setting.jsp"><span class="la la-igloo"></span><span>Settings</span></a></li>
		</div>
	</div>
<div class="main-content">
	<header>
		<h2>
			<label for="nav-toggle">
				<span class="las la-bars"></span>
			</label>
			Dashboard
		</h2>

		<div class="user-wrapper">
			<img src="images/about/author.jpg" width="40px" height="40px">
			<div>
				<h4>Gopichand Reddy</h4>
				<small>Super Admin</small>
			</div>
		</div>
	</header>

	<main>
		<div class="cards">
			<div class="card-single">
				<div>
					<h1>10</h1>
					<span>Sellers</span>
				</div>
				<div>
					<span class="las la-users"></span>
				</div>
			</div>
			<div class="card-single">
				<div>
					<h1>10</h1>
					<span>Sold Products</span>
				</div>
				<div>
					<span class="las la-users"></span>
				</div>
			</div>
			<div class="card-single">
				<div>
					<h1>10</h1>
					<span>Sold Products</span>
				</div>
				<div>
					<span class="las la-users"></span>
				</div>
			</div>
			<div class="card-single">
				<div>
					<h1>6000</h1>
					<span>Total Revenue</span>
				</div>
				<div>
					<span class="las la-users"></span>
				</div>
			</div>
			
		</div>
	</main>
</div>
</body>
</html>