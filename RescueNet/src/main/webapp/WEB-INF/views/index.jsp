<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RescueNet - Animal Rescue Coordination System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .hero-section {
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('https://thumbs.dreamstime.com/b/support-animal-shelters-rescue-organizations-donate-toys-treats-supplies-happy-healthy-pets-help-animals-need-366642724.jpg');
            background-size: cover;
            background-position: center;
            color: yellow;
            padding: 100px 0;
            text-align: center;
        }
        .role-card {
            transition: transform 0.3s;
        }
        .role-card:hover {
            transform: translateY(-10px);
        }
    </style>
</head>
<body>
    <div class="hero-section mb-5">
        <div class="container">
            <h1 class="display-4 fw-bold">Welcome to RescueNet</h1>
            <p class="lead">Coordinating animal rescue efforts for a better tomorrow</p>
        </div>
    </div>

    <div class="container">
        <div class="row text-center">
            <div class="col-md-4 mb-4">
                <div class="card role-card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Admin</h5>
                        <p class="card-text">Manage volunteers and monitor rescue cases</p>
                        <a href="adminLogin" class="btn btn-primary">Admin Login</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card role-card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Volunteer</h5>
                        <p class="card-text">View assigned cases and update status</p>
                        <a href="volunteerLogin" class="btn btn-success">Volunteer Login</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card role-card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Reporter</h5>
                        <p class="card-text">Report animal cases and track progress</p>
                        <a href="reporterLogin" class="btn btn-info me-2">Reporter Login</a>
                        <a href="reporterRegister" class="btn btn-outline-info">Register</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

<br>
<br> 
<br>
    <footer class="bg-dark text-white text-center py-3 mt-5">
        <div class="container">
            <p class="mb-0">© 2023 RescueNet - Animal Rescue Coordination System</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>