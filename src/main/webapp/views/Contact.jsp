<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - HelpHub</title>
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
        .contact-info-section, .form-section {
            padding: 20px;
            border-radius: 10px;
            background-color: #e9ecef;
            margin-bottom: 20px;
        }
        .contact-info-section .icon {
            font-size: 2rem;
            color: #007bff;
        }
    </style>
</head>
<body>
    <!-- Navbar Include -->
    <%@ include file="UserNavBar.jsp" %>

    <section class="container main-content">
        <!-- Contact Us Title -->
        <div class="text-center mb-5">
            <h1 class="display-4 font-weight-bold">Contact Us</h1>
            <p class="lead">We’d love to hear from you! Please reach out with any questions, suggestions, or support needs.</p>
        </div>

        <!-- Contact Information Section -->
        <div class="contact-info-section text-center">
            <h2 class="font-weight-bold">Our Contact Information</h2>
            <p>Get in touch with us through the following ways:</p>
            <div class="row justify-content-center">
                <div class="col-md-3">
                    <div class="icon"><i class="fas fa-phone-alt"></i></div>
                    <p class="mt-2">Phone: +91 8019594763</p>
                </div>
                <div class="col-md-3">
                    <div class="icon"><i class="fas fa-envelope"></i></div>
                    <p class="mt-2">Email: support@helphub.com</p>
                </div>
                <div class="col-md-3">
                    <div class="icon"><i class="fas fa-map-marker-alt"></i></div>
                    <p class="mt-2">Location: KL University,Vijayawada</p>
                </div>
            </div>
        </div>

        <!-- Contact Form Section -->
        <div class="form-section">
            <h2 class="text-center font-weight-bold mb-4">Send Us a Message</h2>
            <form action="/submitContactForm" method="POST">
                <!-- Name Field -->
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" class="form-control" required>
                </div>
                
                <!-- Email Field -->
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                </div>
                
                <!-- Subject Field -->
                <div class="form-group">
                    <label for="subject">Subject</label>
                    <input type="text" id="subject" name="subject" class="form-control" required>
                </div>
                
                <!-- Message Field -->
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" rows="5" class="form-control" required></textarea>
                </div>
                
                <!-- Submit Button -->
                <div class="text-center">
                    <button type="submit" class="btn btn-success">Send Message</button>
                </div>
            </form>
        </div>
    </section>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
