<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.model.*" %>
<%@ page import="com.dao.*" %>
<%@ page import="com.Controller.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reporter Dashboard - RescueNet</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
<style>
:root {
  --primary-color: #17a2b8;
  --secondary-color: #2c3e50;
  --accent-color: #e74c3c;
  --light-bg: #f8f9fa;
  --card-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

body {
  background-color: var(--light-bg);
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.sidebar {
  min-height: 100vh;
  background-color: var(--secondary-color);
  color: white;
}

.sidebar .nav-link {
  color: rgba(255, 255, 255, 0.75);
  border-radius: 5px;
  margin-bottom: 5px;
}

.sidebar .nav-link:hover,
.sidebar .nav-link.active {
  color: white;
  background-color: rgba(255, 255, 255, 0.1);
}

.sidebar .nav-link i {
  margin-right: 10px;
}

.stat-card {
  transition: transform 0.3s;
  border: none;
  border-radius: 10px;
}

.stat-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
}

.welcome-card {
  background: linear-gradient(135deg, var(--primary-color), #138496);
  color: white;
  border-radius: 10px;
}

.case-card {
  transition: all 0.3s;
  cursor: pointer;
  border-radius: 10px;
}

.case-card:hover {
  transform: translateY(-3px);
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.status-badge {
  font-size: 0.8rem;
  padding: 5px 10px;
  border-radius: 20px;
}

.priority-high {
  border-left: 4px solid #dc3545;
}

.priority-medium {
  border-left: 4px solid #ffc107;
}

.priority-low {
  border-left: 4px solid #28a745;
}

.profile-img {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  object-fit: cover;
  border: 3px solid white;
}
</style>
</head>
<body>
<div class="container-fluid">
  <div class="row">
    <!-- Sidebar -->
    <div class="col-md-2 sidebar p-0">
      <div class="p-3 text-center">
        <img src="https://ui-avatars.com/api/?name=Reporter&background=17a2b8&color=fff" class="profile-img mb-3" alt="Profile">
        <h5><small class="text-muted">Reporter</small></h5>
      </div>
      <ul class="nav flex-column p-3">
        <li class="nav-item"><a class="nav-link active" href="repoterDashboard"><i class="bi bi-speedometer2"></i> Dashboard</a></li>
        <li class="nav-item"><a class="nav-link" href="reporterAddCase"><i class="bi bi-plus-circle"></i> Report New Case</a></li>
        <li class="nav-item"><a class="nav-link" href="viewCases"><i class="bi bi-eye"></i> View Rescue Cases</a></li>
        <li class="nav-item mt-3"><a class="nav-link" href="reporterLogin"><i class="bi bi-box-arrow-left"></i> Logout</a></li>
      </ul>
    </div>

    <!-- Main Content -->
    <div class="col-md-10 p-4">
      <div class="welcome-card p-4 mb-4">
        <div class="d-flex justify-content-between align-items-center">
          <div>
            <h3>Welcome</h3>
            <p class="mb-0">Thank you for helping animals in need</p>
          </div>
          <a href="reporterAddCase" class="btn btn-light"><i class="bi bi-plus-circle"></i> Report New Case</a>
        </div>
      </div>

      <div class="row mb-4">
        <div class="col-md-4 mb-3">
          <div class="card stat-card bg-white">
            <div class="card-body">
              <h5 class="card-title text-muted">Total Cases Reported</h5>
              <h2 class="card-text"></h2>
            </div>
          </div>
        </div>
        <div class="col-md-4 mb-3">
          <div class="card stat-card bg-white">
            <div class="card-body">
              <h5 class="card-title text-muted">Active Cases</h5>
              <h2 class="card-text"></h2>
            </div>
          </div>
        </div>

      
      </div>
    </div> <!-- End Main Content -->
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
