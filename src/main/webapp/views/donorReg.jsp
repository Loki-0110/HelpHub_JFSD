<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Registration - HelpHub</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="<c:url value='/css/style.css' />">
</head>
<body style="background-color: #eee;">
    <%@ include file="UserNavBar.jsp" %> <!-- Navbar included as per previous setup -->

    <section class="vh-75">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-75">
                <div class="col-lg-12 col-xl-11">
                    <div class="card text-black" style="border-radius: 15px;">
                        <div class="card-body p-md-4">
                            <div class="row justify-content-center">
                                <!-- Left Column - Form Section -->
                                <div class="col-md-10 col-lg-6 col-xl-5 order-1 order-lg-1">
                                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Join as a Giver</p>
                                    
                                    <form class="mx-1 mx-md-4" action="/donorReg" method="POST">
                                        <!-- Username Field -->
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <input type="text" id="username" name="username" class="form-control" required />
                                                <label class="form-label" for="username">Username</label>
                                            </div>
                                        </div>

                                        <!-- Email Field -->
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <input type="email" id="email" name="email" class="form-control" required />
                                                <label class="form-label" for="email">Your Email</label>
                                            </div>
                                        </div>

                                        <!-- Password Field -->
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <input type="password" id="password" name="password" class="form-control" required />
                                                <label class="form-label" for="password">Password</label>
                                            </div>
                                        </div>

                                        <!-- Confirm Password Field -->
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" required />
                                                <label class="form-label" for="confirmPassword">Confirm password</label>
                                            </div>
                                        </div>

                                        <!-- Terms of Service Checkbox -->
                                        <!--  
                                        <div class="form-check d-flex justify-content-center align-items-center mb-4">
                                            <input class="form-check-input me-2" type="checkbox" value="" id="terms" required />
                                            <label class="form-check-label ms-1" for="terms">
                                               I agree to all statements in <a href="#!">Terms of service</a>
                                            </label>
                                        </div>
                                        -->
                                        
                                        <!-- Submit Button -->
                                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                            <button type="submit" class="btn btn-secondary btn-md">Register</button>
                                        </div>
                                    </form>
                                    
                                    <!-- Login Link -->
                                    <div class="text-center">
                                        <p>Already have an account? <a href="/login">Log in</a></p>
                                    </div>
                                </div>

                                <!-- Right Column - Image Section -->
                                <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                                    <img src='/Images/donorreg.jpg'
                                         class="img-fluid" alt="Sample image">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>