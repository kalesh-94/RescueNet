<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Cases - RescueNet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
    <style>
        .case-card {
            transition: all 0.3s;
            cursor: pointer;
        }
        .case-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        .status-badge {
            font-size: 0.8rem;
            padding: 5px 10px;
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
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Volunteer Sidebar -->
            <div class="col-md-2 bg-dark text-white p-0" style="min-height: 100vh;">
                <div class="p-3">
                    <h5>Volunteer Portal</h5>
                    <p class="text-muted mb-0">Welcome, ${volunteer.name}</p>
                </div>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active text-white" href="volunteerViewRescueCases">
                            <i class="bi bi-clipboard2-pulse me-2"></i>My Cases
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">
                            <i class="bi bi-person me-2"></i>My Profile
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="volunteerLogin">
                            <i class="bi bi-box-arrow-left me-2"></i>Logout
                        </a>
                    </li>
                </ul>
            </div>

            <!-- Main Content -->
            <div class="col-md-10 p-4">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h3>My Assigned Cases</h3>
                    <div>
                        <span class="badge bg-primary me-2">Total:</span>
                        <span class="badge bg-warning text-dark me-2">Pending:</span>
                        <span class="badge bg-success">Completed:</span>
                    </div>
                </div>

                
                    <div class="card-header bg-success text-white h-10 p-3 rounded">
                        <center><h5 class="mb-0 ">Welcome Volunteer !! </h5></center>
                    </div>
                    
            </div>
        </div>
    </div>

    <!-- Status Update Modals -->
    <c:forEach var="rescueCase" items="${assignedCases}">
        <div class="modal fade" id="statusModal${rescueCase.id}" tabindex="-1" aria-labelledby="statusModalLabel${rescueCase.id}" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="statusModalLabel${rescueCase.id}">Update Case Status</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="updateCaseStatus" method="post">
                        <input type="hidden" name="caseId" value="${rescueCase.id}">
                        <div class="modal-body">
                            <div class="mb-3">
                                <label for="status" class="form-label">Current Status</label>
                                <select class="form-select" id="status" name="status" required>
                                    <option value="Pending" ${rescueCase.status == 'Pending' ? 'selected' : ''}>Pending</option>
                                    <option value="In Progress" ${rescueCase.status == 'In Progress' ? 'selected' : ''}>In Progress</option>
                                    <option value="Rescue Complete" ${rescueCase.status == 'Rescue Complete' ? 'selected' : ''}>Rescue Complete</option>
                                    <option value="Follow Up Needed" ${rescueCase.status == 'Follow Up Needed' ? 'selected' : ''}>Follow Up Needed</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="notes" class="form-label">Update Notes</label>
                                <textarea class="form-control" id="notes" name="notes" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </c:forEach>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#casesTable').DataTable({
                order: [[3, 'desc']],
                responsive: true
            });
        });
    </script>
</body>
</html>