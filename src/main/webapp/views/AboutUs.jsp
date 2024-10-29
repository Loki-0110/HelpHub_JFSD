<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - HelpHub</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background-color: #f7f7f7;
        }
        .main-content {
            padding: 40px 20px;
        }
        .vision-section, .mission-section {
            padding: 20px;
            border-radius: 10px;
            background-color: #e9ecef;
            margin-bottom: 20px;
        }
        .team-section .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: 0.3s;
        }
        .team-section .card:hover {
            transform: translateY(-5px);
        }
    </style>
</head>
<body>
    <!-- Navbar Include -->
    <%@ include file="UserNavBar.jsp" %>

    <section class="container main-content">
        <!-- Introduction Section -->
        <div class="text-center mb-5">
            <h1 class="display-4 font-weight-bold">About HelpHub</h1>
            <p class="lead">Empowering communities, one donation at a time. Join us in making a difference in the lives of those in need.</p>
        </div>

        <!-- Vision Section -->
        <div class="vision-section text-center">
            <h2 class="font-weight-bold">Our Vision</h2>
            <p>To build a connected and compassionate world where resources are shared to uplift individuals and families in times of need.</p>
        </div>

        <!-- Mission Section -->
        <div class="mission-section text-center">
            <h2 class="font-weight-bold">Our Mission</h2>
            <p>HelpHub's mission is to connect donors, recipients, and logistics coordinators through a secure and easy-to-use platform to provide essential items during emergencies and natural disasters, fostering a supportive community.</p>
        </div>

        <!-- Values Section -->
        <div class="text-center my-5">
            <h2 class="font-weight-bold">Our Values</h2>
            <p>We are driven by compassion, integrity, and a commitment to creating positive change. Our platform ensures transparency and accountability in every transaction.</p>
        </div>

        <!-- Team Section -->
        <div class="team-section">
            <h2 class="text-center font-weight-bold mb-4">Meet Our Team</h2>
            <div class="row justify-content-center">
                <!-- Admin Card -->
                
                <!-- Donor Card -->
                <div class="col-md-3 mb-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <i class="fas fa-hands-helping fa-3x mb-3"></i>
                            <h5 class="card-title">Donors</h5>
                            <p class="card-text">Generous individuals providing essential items to those in need, especially during emergencies.</p>
                        </div>
                    </div>
                </div>
                <!-- Recipient Card -->
                <div class="col-md-3 mb-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <i class="fas fa-people-carry fa-3x mb-3"></i>
                            <h5 class="card-title">Recipients</h5>
                            <p class="card-text">Individuals and families who receive support during challenging times through essential donations.</p>
                        </div>
                    </div>
                </div>
                <!-- Logistics Coordinator Card -->
                <div class="col-md-3 mb-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <i class="fas fa-truck fa-3x mb-3"></i>
                            <h5 class="card-title">Logistics Coordinators</h5>
                            <p class="card-text">Organizes and manages the logistics of donation drives, ensuring timely delivery to recipients.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Call to Action Section -->
        <div class="text-center my-5">
            <h3 class="font-weight-bold">Join Us in Making a Difference</h3>
            <p>Whether you are here to donate, receive help, or coordinate efforts, your participation is essential. HelpHub connects individuals in meaningful ways to create a resilient and compassionate community.</p>
            <a href="/login" class="btn btn-primary btn-lg mt-3">Get Involved</a>
        </div>
    </section>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
