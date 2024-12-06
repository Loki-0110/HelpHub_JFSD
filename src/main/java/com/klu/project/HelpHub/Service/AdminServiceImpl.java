package com.klu.project.HelpHub.Service;
import com.klu.project.HelpHub.Model.Admin;
import com.klu.project.HelpHub.Model.Campaign;
import com.klu.project.HelpHub.Model.Donor;
import com.klu.project.HelpHub.Repository.AdminRepository;
import com.klu.project.HelpHub.Repository.CampaignRepository;
import com.klu.project.HelpHub.Repository.DonorRepository;
import com.klu.project.HelpHub.Service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AdminServiceImpl implements AdminService {

    private final DonorRepository donorRepository;
    private final CampaignRepository campaignRepository;
    private final AdminRepository adminRepository;

    @Autowired
    public AdminServiceImpl(DonorRepository donorRepository, CampaignRepository campaignRepository, AdminRepository adminRepository) {
        this.donorRepository = donorRepository;
        this.campaignRepository = campaignRepository;
        this.adminRepository = adminRepository;
    }

    // Donor methods
    @Override
    public List<Donor> getAllDonors() {
        return donorRepository.findAll();
    }

    @Override
    public Donor addDonor(Donor donor) {
        return donorRepository.save(donor);
    }

    @Override
    public Optional<Donor> getDonorById(Long id) {
        return donorRepository.findById(id);
    }
    @Override
    public Donor updateDonor(Donor donor) {
        return donorRepository.save(donor); // Save updated donor details
    }

    @Override
    public void deleteDonor(Long id) {
        donorRepository.deleteById(id);
    }

    // Campaign methods
    @Override
    public Campaign addCampaign(Campaign campaign) {
        return campaignRepository.save(campaign);
    }

    @Override
    public List<Campaign> getAllCampaigns() {
        return campaignRepository.findAll();
    }

    @Override
    public Optional<Campaign> getCampaignById(Long id) {
        return campaignRepository.findById(id);
    }

    @Override
    public void deleteCampaign(Long id) {
        campaignRepository.deleteById(id);
    }

    // Admin Registration
    @Override
    public Admin registerAdmin(Admin admin) {
        // Check if the admin already exists (optional)
        Optional<Admin> existingAdmin = adminRepository.findByEmail(admin.getEmail());
        if (existingAdmin.isPresent()) {
            throw new IllegalArgumentException("Admin with this email already exists.");
        }
        return adminRepository.save(admin);
    }

    // Admin Login
    @Override
    public String loginAdmin(Admin admin) {
        Optional<Admin> existingAdmin = adminRepository.findByEmail(admin.getEmail());
        if (existingAdmin.isPresent()) {
            Admin foundAdmin = existingAdmin.get();
            if (foundAdmin.getPassword().equals(admin.getPassword())) {
                return "Login Successful!";
            } else {
                return "Invalid password!";
            }
        } else {
            return "Admin not found!";
        }
    }
}
