<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Volunteer </title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header bg-primary text-white">
						<h4 class="mb-0">Add New Volunteer</h4>
					</div>
					<div class="card-body">
						<form action="AddVolunteer" method="post">
							<div class="row mb-3">
								<div class="col-md-6">
									<label for="name" class="form-label">Full Name</label> 
									<input 
										type="text" class="form-control" id="name" name="vName"
										required>
								</div>
								<div class="col-md-6">
									<label for="email" class="form-label">Email</label> <input
										type="email" class="form-control" id="email" name="vEmail"
										required>
								</div>
							</div>

							<div class="row mb-3">
								<div class="col-md-6">
									<label for="password" class="form-label">Password</label> <input
										type="password" class="form-control" id="password"
										name="vPassword" required="required">
								</div>
								<div class="col-md-6">
									<label for="phone" class="form-label">Phone Number</label> <input
										type="number" class="form-control" id="phone" name="vcontact"
										required>
								</div>
							</div>

							<div class="row mb-3">
								<div class="col-md-6">
									<label for="zone" class="form-label">Zone/Area</label> <select
										class="form-select" id="zone" name="vZone" required>
										<option value="">Select Zone</option>
										<option value="North">North</option>
										<option value="South">South</option>
										<option value="East">East</option>
										<option value="West">West</option>
										<option value="Central">Central</option>
									</select>
								</div>
							

							
					<br>
					<br>
					</div>
							<div class="d-grid gap-2">
								<button type="submit" class="btn btn-primary">Add
									Volunteer</button>
								<a href="adminDashboard" class="btn btn-secondary">Cancel</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>