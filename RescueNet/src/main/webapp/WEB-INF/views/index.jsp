<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RescueNet - Animal Rescue Coordination System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .hero-section {
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('https://thumbs.dreamstime.com/b/support-animal-shelters-rescue-organizations-donate-toys-treats-supplies-happy-healthy-pets-help-animals-need-366642724.jpg');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 250px 0;
            text-align: center;
            margin-top: -70px; /* Pull hero up behind header */
        }
        .role-card {
            transition: transform 0.3s;
        }
        .role-card:hover {
            transform: translateY(-10px);
        }
        /* Frosted glass header styles */
        .rescunate-header {
            background: rgba(255, 255, 255, 0.2); /* Semi-transparent base */
            backdrop-filter: blur(10px); /* Creates the frosted glass effect */
            -webkit-backdrop-filter: blur(10px); /* For Safari */
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            padding: 15px 0;
            position: sticky;
            top: 0;
            z-index: 1000;
            width: 100%;
        }
        .rescunate-header .navbar-brand {
            font-weight: 700;
            color: white;
            font-size: 1.5rem;
            text-shadow: 0 1px 3px rgba(0,0,0,0.3);
        }
        .rescunate-header .navbar-brand i {
            margin-right: 10px;
            color: #f8b400; /* Golden paw icon */
        }
        .rescunate-header .btn-outline-light {
            color: white;
            border-color: rgba(255, 255, 255, 0.6);
            background-color: rgba(255, 255, 255, 0.1);
        }
        .rescunate-header .btn-outline-light:hover {
            background-color: rgba(255, 255, 255, 0.3);
        }
        /* Footer remains unchanged */
        .rescunate-footer {
            background-color: #333;
            color: white;
            padding: 30px 0;
            margin-top: 50px;
        }
        .rescunate-footer .footer-links a {
            color: #f8b400;
            margin: 0 10px;
            text-decoration: none;
        }
        .rescunate-footer .footer-links a:hover {
            text-decoration: underline;
        }
        /* Body adjustment for header */
        body {
            margin: 0;
            padding: 0;
        }
    </style>
</head>
<body>
    <!-- Frosted Glass Header -->
    <header class="rescunate-header">
        <div class="container">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <i class="fas fa-paw"></i>Rescunate
                    </a>
                    <div class="d-flex">
                        <a href="adminLogin" class="btn btn-sm btn-outline-light me-2">Admin</a>
                        <a href="volunteerLogin" class="btn btn-sm btn-outline-light me-2">Volunteer</a>
                        <a href="reporterLogin" class="btn btn-sm btn-outline-light">Reporter</a>
                    </div>
                </div>
            </nav>
        </div>
    </header>

    <!-- Your Existing Content (unchanged) -->
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

    <!-- Rescunate Footer (unchanged) -->
    <footer class="rescunate-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    <h5><i class="fas fa-paw me-2"></i>Rescunate Network</h5>
                    <p>Connecting rescuers, volunteers, and animals in need</p>
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <div class="footer-links mb-3">
                        <a href="#">About Us</a>
                        <a href="#">Contact</a>
                        <a href="#">Privacy Policy</a>
                        <a href="#">Terms of Service</a>
                    </div>
                    <p class="mb-0">© 2023 Rescunate - Animal Rescue Coordination System</p>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>