<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.klu.project.HelpHub.Model.Donor" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Profile</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #e0eafc, #cfdef3); /* Gradient background */
            margin: 0;
            font-family: 'Roboto', sans-serif; /* Modern font */
        }
        .sidebar {
            background-color: #343a40;
            color: white;
            width: 250px;
            height: 100vh;
            position: fixed;
            overflow-y: auto;
        }
        .nav-link:hover {
            background-color: #495057;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
            width: calc(100% - 250px);
            transition: margin-left 0.3s ease; /* Smooth transition for content */
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s, box-shadow 0.2s; /* Animation effect on hover */
        }
        .card:hover {
            transform: translateY(-5px); /* Lift effect on hover */
            box-shadow: 0 8px 40px rgba(0, 0, 0, 0.2); /* Stronger shadow on hover */
        }
        .profile-header {
            background-color: #007bff;
            color: white;
            padding: 30px;
            border-radius: 15px 15px 0 0;
            text-align: center;
        }
        .profile-image {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            border: 5px solid white;
            margin: 15px 0;
            transition: transform 0.3s; /* Smooth image hover effect */
        }
        .profile-image:hover {
            transform: scale(1.1); /* Image scale on hover */
        }
        .profile-content {
            background-color: white;
            padding: 30px;
            border-radius: 0 0 15px 15px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            background-color: #28a745;
            color: white;
            transition: background-color 0.3s;
        }
        .btn-custom:hover {
            background-color: #218838;
        }
        .icon {
            margin-right: 8px; /* Space between icon and text */
        }
        .stat {
            text-align: center;
            margin: 20px 0;
        }
        .stat .value {
            font-size: 24px;
            font-weight: bold;
        }
        .progress {
            height: 20px;
        }
        .tooltip-inner {
            background-color: #007bff;
            color: white;
        }
        /* New styles for added elements */
        .badge {
            background-color: #ffc107;
            color: black;
            border-radius: 5px;
            padding: 5px 10px;
            margin: 5px;
        }
        .achievement {
            display: inline-block;
            padding: 10px;
            border: 1px solid #007bff;
            border-radius: 5px;
            margin-top: 10px;
            transition: background-color 0.3s;
        }
        .achievement:hover {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>

<%@ include file="DonorNavBar.jsp" %> <!-- Sidebar inclusion -->

<%
    // Get the donor object from the model
    Donor donor = (Donor) request.getAttribute("donor");
%>

<div class="content">
    <div class="card">
        <div class="profile-header">
            <h2><%= donor != null ? donor.getUsername() : "Not Available" %>'s Profile</h2>
            <img src="https://via.placeholder.com/150" alt="Profile Picture" class="profile-image">
            <h3><%= donor != null ? donor.getUsername() : "Not Available" %></h3>
            <p><i class="fas fa-envelope icon"></i><%= donor != null ? donor.getEmail() : "Not Available" %></p>
            <!-- Location -->
        </div>
        <div class="profile-content">
            <h5>Profile Details</h5>
            <hr>
            <div class="row mb-3">
                <div class="col-md-6">
                    <strong><i class="fas fa-user icon"></i>Username:</strong> <span><%= donor != null ? donor.getUsername() : "Not Available" %></span>
                </div>
                <div class="col-md-6">
                    <strong><i class="fas fa-envelope icon"></i>Email:</strong> <span><%= donor != null ? donor.getEmail() : "Not Available" %></span>
                </div>
            </div>

            <!-- Added Achievements Section -->
            <div class="stat">
                <h5>Achievements</h5>
                <div class="achievement">First Donation Made</div>
                <div class="achievement">Community Contributor</div>
                <div class="achievement">Top Donor of the Month</div>
            </div>

            <div class="stat">
                <h5>Score</h5>
                <p class="value">5</p> <!-- Example value for donations -->
                <small>Donations Made</small>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: 70%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            </div>
            <div class="text-center">
                <a href="/edit-profile" class="btn btn-custom" data-toggle="tooltip" data-placement="top" title="Edit your profile">
                    <i class="fas fa-edit icon"></i>Edit Profile
                </a>
                <a href="/share-profile" class="btn btn-custom" data-toggle="tooltip" data-placement="top" title="Share your profile">
                    <i class="fas fa-share-alt icon"></i>Share Profile
                </a>
            </div>
        </div>
    </div>
</div>

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

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    $(function () {
        // Initialize tooltip
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>
</body>
</html>
