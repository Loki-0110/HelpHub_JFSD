<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Donor Dashboard - HelpHub</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    <style>
        body { font-family: 'Roboto', sans-serif; }
        .header { background-color: #f8f9fa; color: black; }
        .footer { background-color: #343a40; color: white; }
        .dashboard-content { min-height: 100vh; margin-left: 250px; padding: 20px; }
        .card { transition: transform 0.2s, box-shadow 0.2s; background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%); border: none; box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); }
        .card:hover { transform: scale(1.02); }
        .list-group-item { display: flex; justify-content: space-between; align-items: center; }
        .btn-primary { transition: background-color 0.3s ease; }
        .btn-primary:hover { background-color: #0056b3; }
        .footer a { color: white; transition: color 0.3s ease; }
        .footer a:hover { color: #74ebd5; }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <%@ include file="DonorNavBar.jsp" %>

    <!-- Header with Project and Technology Info -->
    <header class="header py-4">
        <div class="container text-center">
            <h1>Donor Dashboard <span class="badge badge-danger"></span></h1>
            <p>Manage your donations and track your impact.</p>
        </div>
    </header>

    <!-- Main Dashboard Content -->
    <div class="container dashboard-content my-5">
        <div class="row">
            <!-- Donation Trends -->
            <div class="col-md-8">
                <div class="card mb-4">
                    <div class="card-header">
                        <h5><i class="fas fa-chart-line"></i> Donation Trends</h5>
                    </div>
                    <div class="card-body">
                        <canvas id="donationChart" class="graph-placeholder"></canvas>
                    </div>
                </div>
            </div>

            <!-- Upcoming Campaigns -->
            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-header">
                        <h5><i class="fas fa-calendar-alt"></i> Upcoming Campaigns</h5>
                    </div>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item">Campaign 1: <span class="badge badge-success">Ongoing</span></li>
                            <li class="list-group-item">Campaign 2: <span class="badge badge-info">Coming Soon</span></li>
                            <li class="list-group-item">Campaign 3: <span class="badge badge-danger">Cancelled</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Recent Donations and Impact -->
            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-header">
                        <h5><i class="fas fa-hands-helping"></i> Recent Donations & Impact</h5>
                    </div>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item">Your Donation: <strong>2500 INR</strong> - Provided meals for 50 families</li>
                            <li class="list-group-item">Your Donation: <strong>1000 INR</strong> - Supplied hygiene kits for 20 individuals</li>
                            <li class="list-group-item">Your Donation: <strong>500 INR</strong> - Supported school supplies for 10 children</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Contact Support and Resources -->
            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-header">
                        <h5><i class="fas fa-headset"></i> Contact Support & Resources</h5>
                    </div>
                    <div class="card-body">
                        <p>If you have any questions or need assistance, reach out to us!</p>
                        <p>Email: <strong>support@helphub.com</strong></p>
                        <p>Phone: <strong>+91 8899526314</strong></p>
                        <button class="btn btn-primary"><i class="fas fa-envelope"></i> Get Support</button>
                        <p class="mt-3"> <i class="fas fa-book-open"></i> <a href="<c:url value='/resources/donor-guide.pdf' />" download>Download Donor Guide</a></p>
                    </div>
                </div>
            </div>

            <!-- Donor Achievements -->
            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-header">
                        <h5><i class="fas fa-trophy"></i> Donor Achievements</h5>
                    </div>
                    <div class="card-body">
                        <p>Thank you for your continued support! Your contributions have helped us reach:</p>
                        <ul class="list-group">
                            <li class="list-group-item"><i class="fas fa-check-circle text-success"></i> Top Donor for June</li>
                            <li class="list-group-item"><i class="fas fa-gem text-warning"></i> Platinum Supporter Status</li>
                            <li class="list-group-item"><i class="fas fa-medal text-primary"></i> Lifetime Impact Award - 100+ Donations</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer py-4">
        <div class="container text-center">
            <p>&copy; 2024 HelpHub. All rights reserved.</p>
            <p>
                <a href="https://facebook.com" target="_blank" class="fab fa-facebook"></a>
                <a href="https://twitter.com" target="_blank" class="text-white" style="font-size: 15px;">X</a>
                <a href="https://instagram.com" target="_blank" class="fab fa-instagram"></a>
            </p>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        const ctx = document.getElementById('donationChart').getContext('2d');
        const donationChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['January', 'February', 'March', 'April', 'May'],
                datasets: [{
                    label: 'Donations',
                    data: [1200, 1500, 800, 2000, 1500],
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1,
                    fill: true
                }]
            },
            options: {
                scales: {
                    y: { beginAtZero: true }
                }
            }
        });
    </script>
</body>
</html>
