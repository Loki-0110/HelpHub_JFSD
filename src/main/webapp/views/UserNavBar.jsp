<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<nav class="navbar navbar-expand-lg navbar-light bg-dark">
    <a class="navbar-brand text-white" href="/home">
        <i class="fas fa-hands-helping"></i> HelpHub
    </a>
    <a class="nav-link text-white" href="/" style="margin-left: 15px;"><i class="fas fa-home"></i> Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link text-white" href="/admin"><i class="fas fa-user-shield"></i> Admin</a></li>
            <li class="nav-item"><a class="nav-link text-white" href="/login"><i class="fas fa-hand-holding-heart"></i> Donor</a></li>
            <li class="nav-item"><a class="nav-link text-white" href="/logistics"><i class="fas fa-truck"></i> Logistics</a></li>
            <li class="nav-item"><a class="nav-link text-white" href="/about"><i class="fas fa-info-circle"></i> About Us</a></li>
            <li class="nav-item"><a class="nav-link text-white" href="/contact"><i class="fas fa-envelope"></i> Contact</a></li>
            <li class="nav-item"><a class="nav-link text-white" href="/signup"><i class="fas fa-user-plus"></i> Sign Up</a></li>
        </ul>
    </div>
</nav>
