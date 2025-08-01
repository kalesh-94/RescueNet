<%@page import="com.model.*"%>
<%@page import="com.dao.*"%>
<%@page import="com.Controller.*"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Reporters - RescueNet</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
<style>
    :root {
        --primary-color: #17a2b8; /* Changed to teal for reporters */
        --secondary-color: #2c3e50;
        --accent-color: #e74c3c;
        --light-bg: #f8f9fa;
        --card-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    
    body {
        background-color: var(--light-bg);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    
    .reporter-card {
        background-color: white;
        border-radius: 10px;
        box-shadow: var(--card-shadow);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    
    .reporter-card:hover {
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
    
    .reporter-img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        object-fit: cover;
        border: 2px solid var(--primary-color);
    }
    
    .address-badge {
        background-color: var(--primary-color);
        color: white;
        font-size: 0.8rem;
        padding: 5px 10px;
        border-radius: 20px;
        max-width: 200px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    
    .add-reporter-btn {
        background-color: var(--primary-color);
        border: none;
        padding: 10px 20px;
        border-radius: 30px;
        font-weight: 500;
        transition: all 0.3s ease;
    }
    
    .add-reporter-btn:hover {
        background-color: #138496;
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
    
    .red {
        color: var(--accent-color);
    }
    
    .cases-count {
        font-weight: bold;
        color: var(--primary-color);
    }
</style>
</head>
<body>
    <div class="container-fluid py-4">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="reporter-card p-4 mb-4">
                <div class="d-flex justify-content-between align-items-center mb-4">
                        <h2 class="page-title">View Reporters</h2>
                        
                    </div>
                    

                    <div class="table-responsive">
                        <table id="reportersTable" class="table table-hover" style="width:100%">
                            <thead class="table-header">
                                <tr>
                                    <th><i class="bi bi-person-fill"></i> Name</th>
                                    <th><i class="bi bi-telephone-fill"></i> Contact</th>
                                    <th><i class="bi bi-geo-alt-fill"></i> Address</th>
                                    <th><i class="bi bi-envelope-fill"></i> Email</th>
                                    
                                    <th><i class="bi bi-trash-fill"></i> Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            <% List<Reporter> getAllRepo = (List<Reporter>) request.getAttribute("getAllRepo"); 
                            for(Reporter r : getAllRepo )
                            {
                            %>
                            
                            <tr>
                            <td><%= r.getrName() %></td>
                            <td><%= r.getrContact() %></td>
                            <td><%= r.getrAddress() %></td>
                            <td><%= r.getrEmail() %></td>
                            <td> <a href="repoDelete?rContact=<%= r.getrContact() %>">Delete</a></td>
                            
                            
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
            $('#reportersTable').DataTable({
                responsive: true,
                language: {
                    search: "_INPUT_",
                    searchPlaceholder: "Search reporters...",
                    lengthMenu: "Show _MENU_ reporters per page",
                    zeroRecords: "No reporters found",
                    info: "Showing _START_ to _END_ of _TOTAL_ reporters",
                    infoEmpty: "No reporters available",
                    infoFiltered: "(filtered from _MAX_ total reporters)"
                },
                dom: '<"top"lf>rt<"bottom"ip>',
                initComplete: function() {
                    $('.dataTables_filter input').addClass('form-control');
                    $('.dataTables_length select').addClass('form-select');
                },
                columnDefs: [
                    { targets: [4], orderable: true, searchable: false } // Cases column
                ]
            });
        });
    </script>
</body>
</html>