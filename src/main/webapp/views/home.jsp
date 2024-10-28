<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ include file="UserNavBar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HelpHub</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    <style>
        /* Custom styles for header and footer */
        .header {
            background-color: white; /* Change this to your preferred color */
            color: black; /* Text color for better contrast */
        
        .footer {
            background-color: #343a40; /* Darker color for footer */
            color: white; /* Text color for footer */
        }
        /* Optional: Adjusting card text color for readability */
        .card-body {
            color: #212529; /* Default Bootstrap text color */
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header class="header py-4">
        <div class="container text-center">
            <h1>Welcome to HelpHub</h1>
            <p>Your platform to donate essentials and improve lives, especially during emergencies.</p>
            <a href="donate.jsp" class="btn btn-primary">Donate Now</a> <!-- Changed button color for contrast -->
        </div>
    </header>

    <!-- Hero Image Section -->
    <section class="Helping">
        <div class="text-center">
            <img src="<c:url value='/Images/HelpingHands.png' />" alt="Helping Hands" class="img-fluid">
        </div>
    </section>

    <!-- How It Works Section -->
    <section class="how-it-works my-5">
        <div class="container">
            <h2 class="text-center">How It Works</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img src="<c:url value='/Images/cause.png' />" class="card-img-top" alt="Step 1">
                        <div class="card-body">
                         <h5 class="card-title">Choose Your Cause</h5>
                         <p class="card-text">Pick a cause that speaks to your heart.</p> 
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="<c:url value='/Images/donate.jpg' />" class="card-img-top" alt="Step 2">
                        <div class="card-body">
                            <h5 class="card-title">Make a Donation</h5>
                            <p class="card-text">Contribute what you can to support those in need.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="<c:url value='/Images/people.jpg' />" class="card-img-top" alt="Step 3">
                        <div class="card-body">
                            <h5 class="card-title">Help Others</h5>
                            <p class="card-text">Your contributions make a difference in people's lives.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Featured Campaigns Section -->
    <section class="featured-campaigns my-5">
        <div class="container">
            <h2 class="text-center">Featured Campaigns</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img src="<c:url value='/Images/disaster.png' />" class="card-img-top" alt="Disaster Relief Fund">
                        <div class="card-body">
                            <h5 class="card-title">Disaster Relief Fund</h5>
                            <p class="card-text">Assist communities affected by natural disasters through donations, shelter, and recovery efforts.</p>
                            <a href="donate.jsp" class="btn btn-primary">Contribute</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="<c:url value='/Images/school.png' />" class="card-img-top" alt="Back-to-School Supplies Drive">
                        <div class="card-body">
                            <h5 class="card-title">Back-to-School Supplies Drive</h5>
                            <p class="card-text">Collect school supplies for underprivileged children to ensure they have the tools they need for education.</p>
                            <a href="donate.jsp" class="btn btn-primary">Contribute</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="<c:url value='/Images/fooddrive.jpg' />" class="card-img-top" alt="Food Drive Campaign">
                        <div class="card-body">
                            <h5 class="card-title">Food Drive Campaign</h5>
                            <p class="card-text">Organize a food drive to collect non-perishable food items for local food banks.</p>
                            <a href="donate.jsp" class="btn btn-primary">Contribute</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Success Stories Section -->
    <section class="success-stories my-5">
        <div class="container">
            <h2 class="text-center">Success Stories</h2>
            <blockquote class="blockquote text-center">
                <p class="mb-0">"Thanks to HelpHub, I was able to receive the assistance I needed during a tough time."</p>
            </blockquote>
        </div>
    </section>

    <!-- Footer Section -->
       <footer class="footer py-4 bg-dark text-white">
         <div class="container text-center">
         <p>Email: support@helphub.com | Phone: +91 8899526314</p>
         <p>
            <a href="https://facebook.com" target="_blank" class="fab fa-facebook text-white"></a>
            <a href="https://twitter.com" target="_blank" class="text-white" style="font-size: 15px;">X</a>
            <a href="https://instagram.com" target="_blank" class="fab fa-instagram text-white"></a>
         </p>
         <p>&copy; 2024 HelpHub. All rights reserved.</p>
        </div>
       </footer>
       

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
