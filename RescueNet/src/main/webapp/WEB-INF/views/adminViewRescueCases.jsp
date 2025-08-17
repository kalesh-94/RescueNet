<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin View - Rescue Cases | RescueNet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <style>
        .admin-table {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .table-header-admin {
            background-color: #3498db;
            color: white;
        }
        .badge-pending {
            background-color: #ffc107;
            color: #212529;
        }
        .badge-in-progress {
            background-color: #17a2b8;
        }
        .badge-resolved {
            background-color: #28a745;
        }
        .priority-high {
            color: #dc3545;
            font-weight: bold;
        }
        .priority-medium {
            color: #fd7e14;
            font-weight: bold;
        }
        .priority-low {
            color: #28a745;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container-fluid mt-4">
        <div class="card admin-table">
            <div class="card-header">
                <h3><i class="bi bi-clipboard2-pulse"></i> All Rescue Cases</h3>
            </div>
            <div class="card-body">
                <table id="adminCasesTable" class="table table-hover">
                    <thead class="table-header-admin">
                        <tr>
                            <th>Case ID</th>
                            <th>Reporter Contact ID</th>
                            <th>Animal</th>
                            <th>Animal Condition</th>
                            <th>Description</th>
                            <th>Location</th>
                            <th>Reported On</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<RescueCase> reslist = (List<RescueCase>) request.getAttribute("reslist");
                            if (reslist != null && !reslist.isEmpty()) {
                                for (RescueCase re : reslist) {
                        %>
                        <tr>
                            <td><%= re.getrId() %></td>
                            <td><%= re.getrContactId() %></td>
                            <td><%= re.getrAnimalType() %></td>
                            <td><%= re.getrAnimalCondition() %></td>
                            <td><%= re.getrDesc() != null ? re.getrDesc() : "" %></td>
                            <td><%= re.getrLocation() %></td>
                            <td><%= re.getrDate() %></td>
                            <td>
                                <span class="badge <%= 
                                    re.getrStatus().equals("Pending") ? "badge-pending" : 
                                    re.getrStatus().equals("In Progress") ? "badge-in-progress" : "badge-resolved" %>">
                                    <%= re.getrStatus() %>
                                </span>
                            </td>
                        </tr>
                        <%
                                }
                            } else {
                        %>
                        <tr>
                            <td colspan="8" class="text-center text-danger py-4">
                                <i class="bi bi-exclamation-triangle-fill"></i> No cases found.
                            </td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        $(document).ready(function() {
            $('#adminCasesTable').DataTable({
                responsive: true,
                dom: '<"top"lf>rt<"bottom"ip>',
                language: {
                    search: "_INPUT_",
                    searchPlaceholder: "Search cases...",
                    lengthMenu: "Show _MENU_ cases per page",
                    zeroRecords: "No matching cases found",
                    info: "Showing _START_ to _END_ of _TOTAL_ cases",
                    infoEmpty: "No cases available",
                    infoFiltered: "(filtered from _MAX_ total cases)"
                }
            });
        });
    </script>
</body>
</html>