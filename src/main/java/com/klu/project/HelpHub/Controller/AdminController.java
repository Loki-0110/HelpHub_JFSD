package com.klu.project.HelpHub.Controller;

import com.klu.project.HelpHub.Model.Admin;
import com.klu.project.HelpHub.Model.Campaign;
import com.klu.project.HelpHub.Model.Donor;
import com.klu.project.HelpHub.Service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/admin")
public class AdminController {

    private final AdminService adminService;

    @Autowired
    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }

    // Admin Registration
    @PostMapping("/register")
    public ResponseEntity<Admin> registerAdmin(@RequestBody Admin admin) {
        Admin registeredAdmin = adminService.registerAdmin(admin);
        return new ResponseEntity<>(registeredAdmin, HttpStatus.CREATED);
    }

    // Admin Login
    @PostMapping("/login")
    public ResponseEntity<String> loginAdmin(@RequestBody Admin admin) {
        String response = adminService.loginAdmin(admin);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    // Get a list of all donors
    @GetMapping("/donors")
    public List<Donor> getAllDonors() {
        return adminService.getAllDonors();
    }

    // Add a new donor
    @PostMapping("/donor")
    public ResponseEntity<Donor> addDonor(@RequestBody Donor donor) {
        Donor savedDonor = adminService.addDonor(donor);
        return new ResponseEntity<>(savedDonor, HttpStatus.CREATED);
    }

    // Delete a donor by ID
    @DeleteMapping("/donor/{id}")
    public ResponseEntity<Void> deleteDonor(@PathVariable Long id) {
        Optional<Donor> donor = adminService.getDonorById(id);
        if (donor.isPresent()) {
            adminService.deleteDonor(id);
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // Get a specific donor by ID
    @GetMapping("/donor/{id}")
    public ResponseEntity<Donor> getDonorById(@PathVariable Long id) {
        Optional<Donor> donor = adminService.getDonorById(id);
        return donor.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }
    
    @PutMapping("/donor/{id}")
    public ResponseEntity<Donor> editDonor(@PathVariable Long id, @RequestBody Donor updatedDonor) {
        Optional<Donor> existingDonor = adminService.getDonorById(id);
        if (existingDonor.isPresent()) {
            // Update the donor details
            Donor donor = existingDonor.get();
            donor.setUsername(updatedDonor.getUsername());
            donor.setEmail(updatedDonor.getEmail());
            donor.setPassword(updatedDonor.getPassword());
            
            // Save the updated donor
            Donor savedDonor = adminService.updateDonor(donor);
            return new ResponseEntity<>(savedDonor, HttpStatus.OK);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // Create a new campaign
    @PostMapping("/campaign")
    public ResponseEntity<Campaign> addCampaign(@RequestBody Campaign campaign) {
        Campaign savedCampaign = adminService.addCampaign(campaign);
        return new ResponseEntity<>(savedCampaign, HttpStatus.CREATED);
    }

    // Get a list of all campaigns
    @GetMapping("/campaigns")
    public List<Campaign> getAllCampaigns() {
        return adminService.getAllCampaigns();
    }

    // Delete a campaign by ID
    @DeleteMapping("/campaign/{id}")
    public ResponseEntity<Void> deleteCampaign(@PathVariable Long id) {
        Optional<Campaign> campaign = adminService.getCampaignById(id);
        if (campaign.isPresent()) {
            adminService.deleteCampaign(id);
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // Get campaign details by ID
    @GetMapping("/campaign/{id}")
    public ResponseEntity<Campaign> getCampaignById(@PathVariable Long id) {
        Optional<Campaign> campaign = adminService.getCampaignById(id);
        return campaign.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }
}
