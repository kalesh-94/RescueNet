<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Report New Case - RescueNet</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
<style>
.case-form-container {
	max-width: 800px;
	margin: 30px auto;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	background-color: white;
}

.form-header {
	background-color: #17a2b8;
	color: white;
	padding: 15px;
	border-radius: 5px;
	margin-bottom: 20px;
	text-align: center;
}

.location-preview {
	height: 200px;
	background-color: #f8f9fa;
	border-radius: 5px;
	margin-bottom: 15px;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #6c757d;
}

.animal-image-preview {
	height: 150px;
	background-color: #f8f9fa;
	border-radius: 5px;
	margin-bottom: 15px;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #6c757d;
	overflow: hidden;
}

.animal-image-preview img {
	max-width: 100%;
	max-height: 100%;
	object-fit: contain;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">


			<div class="col-md-10 p-4">
				<div class="case-form-container">
					<div class="form-header">
						<h4>
							<i class="bi bi-clipboard2-pulse"></i> Report Animal Rescue Case
						</h4>
					</div>

					<form action="addCases" method="post">
						<div class="row mb-4">
							<div class="col-md-6">
								<div class="mb-3">
									<label for="animalType" class="form-label">Animal Type</label>
									<select class="form-select" id="animalType" name="rAnimalType"
										required>
										<option value="Dog">Dog</option>
										<option value="Cat">Cat</option>
										<option value="Bird">Bird</option>
										<option value="Fish">Fish</option>
										<option value="Hamster">Hamster</option>
										<option value="Rabbit">Rabbit</option>
										<option value="Guinea Pig">Guinea Pig</option>
										<option value="Reptile">Reptile (e.g., Snake, Lizard,
											Turtle)</option>
										<option value="Amphibian">Amphibian (e.g., Frog,
											Salamander)</option>
										<option value="Other">Other</option>
									</select>
								</div>
								<div class="mb-3">
									<label for="animalCondition" class="form-label">Animal
										Condition</label> <select class="form-select" id="animalCondition"
										name="rAnimalCondition" required>
										<option value="">Select Condition</option>
										<option value="Injured">Injured</option>
										<option value="Sick">Sick</option>
										<option value="Abandoned">Abandoned</option>
										<option value="Abused">Abused</option>
										<option value="Other">Other</option>
									</select>
								</div>

							</div>

						</div>

						<div class="mb-4">
							<label for="location" class="form-label">Location</label>

							<div class="row">
								<div class="col-md-8">
									<input type="text" class="form-control" id="location"
										name="rLocation" placeholder="Enter address or landmark"
										required>
								</div>

							</div>
						</div>

						<div class="mb-4">
							<label for="description" class="form-label">Case
								Description</label>
							<textarea class="form-control" id="description"
								name="rDesc" rows="4"
								placeholder="Please provide detailed information about the situation..."
								required></textarea>
						</div>


						<div class="mb-4">
							<label for="location" class="form-label">Report Date</label>

							<div class="row">
								<div class="col-md-8">
									<input type="Date" class="form-control" id="location"
										name="rDate" placeholder="Enter address or landmark"
										required>
								</div>

							</div>

							<div class="d-grid gap-2 d-md-flex justify-content-md-end">
								<a href="repoterDashboard" class="btn btn-secondary me-md-2">Cancel</a>
								<button type="submit" class="btn btn-primary">
									<i class="bi bi-send"></i> Submit Case
								</button>
							</div>
					</form>
					<div class="text-center mt-4">
                    <a href="repoterDashboard" class="back-btn">
                        <i class="bi bi-arrow-left-circle-fill"></i> Back to Dashboard
                    </a>
                </div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script>
        // Image preview functionality
        document.getElementById('animalImages').addEventListener('change', function(e) {
            const preview = document.getElementById('imagePreview');
            preview.innerHTML = '';
            
            if (this.files.length > 3) {
                alert('You can upload maximum 3 images');
                this.value = '';
                preview.innerHTML = '<i class="bi bi-image text-muted" style="font-size: 2rem;"></i>';
                return;
            }
            
            for (let i = 0; i < this.files.length; i++) {
                if (this.files[i].type.match('image.*')) {
                    const reader = new FileReader();
                    reader.onload = function(e) {
                        const img = document.createElement('img');
                        img.src = e.target.result;
                        preview.appendChild(img);
                    }
                    reader.readAsDataURL(this.files[i]);
                }
            }
        });
        
        
                   
    </script>
</body>
</html>