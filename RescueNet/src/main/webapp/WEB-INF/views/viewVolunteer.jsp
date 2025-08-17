<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.model.Volunteer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Volunteers - RescueNet</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
<style>
    :root {
        --primary-color: #3498db;
        --secondary-color: #2c3e50;
        --accent-color: #e74c3c;
        --light-bg: #f8f9fa;
        --card-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    
    body {
        background-color: var(--light-bg);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    
    .volunteer-card {
        background-color: white;
        border-radius: 10px;
        box-shadow: var(--card-shadow);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    
    .volunteer-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }
    
    .table-header {
        background-color: var(--secondary-color);
        color: white;
    }
    
    .action-btn {
        transition: all 0.2s ease;
    }
    
    .action-btn:hover {
        transform: scale(1.1);
    }
    
    .delete-btn {
        color: var(--accent-color);
    }
    
    .delete-btn:hover {
        color: #c0392b;
    }
    
    .volunteer-img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        object-fit: cover;
        border: 2px solid var(--primary-color);
    }
    
    .zone-badge {
        background-color: var(--primary-color);
        color: white;
        font-size: 0.8rem;
        padding: 5px 10px;
        border-radius: 20px;
    }
    
    .add-volunteer-btn {
        background-color: var(--primary-color);
        border: none;
        padding: 10px 20px;
        border-radius: 30px;
        font-weight: 500;
        transition: all 0.3s ease;
    }
    
    .add-volunteer-btn:hover {
        background-color: #2980b9;
        transform: translateY(-2px);
    }
    
    .back-btn {
        background-color: var(--secondary-color);
        color: white;
        padding: 12px 24px;
        border-radius: 30px;
        text-decoration: none;
        font-weight: 500;
        display: inline-flex;
        align-items: center;
        transition: all 0.3s ease;
        margin-top: 20px;
    }
    
    .back-btn:hover {
        background-color: #1a252f;
        color: white;
        transform: translateY(-2px);
    }
    
    .back-btn i {
        margin-right: 8px;
    }
    
    .page-title {
        color: var(--secondary-color);
        font-weight: 600;
        position: relative;
        padding-bottom: 10px;
    }
    
    .page-title::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 60px;
        height: 3px;
        background-color: var(--primary-color);
    }
    
    .table-responsive {
        border-radius: 10px;
        overflow: hidden;
    }
    
    .dataTables_wrapper .dataTables_filter input {
        border-radius: 20px;
        padding: 5px 15px;
        border: 1px solid #ddd;
    }
    
    .dataTables_wrapper .dataTables_length select {
        border-radius: 20px;
        padding: 5px;
    }
</style>
</head>
<body>
    <div class="container-fluid py-4">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="volunteer-card p-4 mb-4">
                    <div class="d-flex justify-content-between align-items-center mb-4">
                        <h2 class="page-title">Volunteer Management</h2>
                        <a href="addVolunteer" class="btn add-volunteer-btn">
                            <i class="bi bi-person-plus-fill"></i> Add New Volunteer
                        </a>
                    </div>

                    <div class="table-responsive">
                        <table id="volunteersTable" class="table table-hover" style="width:100%">
                            <thead class="table-header">
                                <tr>
                                    <th><i class="bi bi-person-fill"></i> Name</th>
                                    <th><i class="bi bi-telephone-fill"></i> Contact</th>
                                    <th><i class="bi bi-geo-alt-fill"></i> Zone</th>
                                    <th><i class="bi bi-envelope-fill"></i> Email</th>
                                    <th><i class="bi bi-trash-fill"></i> Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                List<Volunteer> getAllVol = (List<Volunteer>) request.getAttribute("getAllVolunteers");
                                for(Volunteer v : getAllVol)
                                { %>
                                <tr>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <img src="https://ui-avatars.com/api/?name=<%= v.getvName() %>&background=3498db&color=fff" 
                                                 class="volunteer-img me-3" alt="<%= v.getvName() %>">
                                            <span><%= v.getvName() %></span>
                                        </div>
                                    </td>
                                    <td><%= v.getVcontact() %></td>
                                    <td><span class="zone-badge"><%= v.getvZone() %></span></td>
                                    <td><%= v.getvEmail() %></td>
                                    <td>
                                        <a href="delete?Vcontact=<%= v.getVcontact()%>">
                                            <i class="bi bi-trash-fill red"></i>
                                        </a>
                                    </td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <div class="text-center mt-4">
                    <a href="adminDashboard" class="back-btn">
                        <i class="bi bi-arrow-left-circle-fill"></i> Back to Dashboard
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#volunteersTable').DataTable({
                responsive: true,
                language: {
                    search: "_INPUT_",
                    searchPlaceholder: "Search volunteers...",
                    lengthMenu: "Show _MENU_ volunteers per page",
                    zeroRecords: "No volunteers found",
                    info: "Showing _START_ to _END_ of _TOTAL_ volunteers",
                    infoEmpty: "No volunteers available",
                    infoFiltered: "(filtered from _MAX_ total volunteers)"
                },
                dom: '<"top"lf>rt<"bottom"ip>',
                initComplete: function() {
                    $('.dataTables_filter input').addClass('form-control');
                    $('.dataTables_length select').addClass('form-select');
                }
            });
        });
    </script>
</body>
</html>