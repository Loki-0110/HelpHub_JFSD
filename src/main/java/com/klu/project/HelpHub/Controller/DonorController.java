package com.klu.project.HelpHub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.klu.project.HelpHub.Service.DonorService;
import com.klu.project.HelpHub.Model.Donor;
import jakarta.servlet.http.HttpServletRequest;

@CrossOrigin(origins = "http://localhost:3000", allowCredentials = "true") // Allow credentials and specific origin
@RestController
@RequestMapping("/api/donor")
public class DonorController {

    @Autowired 
    private DonorService donorService;

    // Donor Registration (POST method)
    @PostMapping("/signup")
    public ResponseEntity<String> insertDonor(@RequestBody Donor donor) {
        donorService.donorRegistration(donor);
        return new ResponseEntity<>("Registration successful. Please log in.", HttpStatus.CREATED);
    }

    // Donor Login (POST method)
    @PostMapping("/login")
    public ResponseEntity<String> donorLogin(@RequestBody Donor donor, HttpServletRequest request) {
        Donor existingDonor = donorService.checkdonorLogin(donor.getEmail(), donor.getPassword());

        if (existingDonor != null) {
            // Store the username in session
            request.getSession().setAttribute("username", existingDonor.getUsername());
            return new ResponseEntity<>("Login successful", HttpStatus.OK);
        } else {
            return new ResponseEntity<>("Login Failed", HttpStatus.UNAUTHORIZED);
        }
    }

    // Show Donor Profile (GET method)
    @GetMapping("/profile")
    public ResponseEntity<Object> showDonorProfile(HttpServletRequest request) {
    	System.out.println("got reueust");
        String username = (String) request.getSession().getAttribute("username"); 
        System.out.println(username);// Retrieve username from session
        Donor donor = donorService.getDonorByUsername(username);

        if (donor != null) {
            return new ResponseEntity<>(donor, HttpStatus.OK);
        } else {
            return new ResponseEntity<>("Donor not found", HttpStatus.NOT_FOUND);
        }
    }
}
