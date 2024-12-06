package com.klu.project.HelpHub.Service;

import com.klu.project.HelpHub.Model.Admin;
import com.klu.project.HelpHub.Model.Campaign;
import com.klu.project.HelpHub.Model.Donor;

import java.util.List;
import java.util.Optional;

public interface AdminService {

    // Donor methods
    List<Donor> getAllDonors();
    Donor addDonor(Donor donor);
    Optional<Donor> getDonorById(Long id);
    void deleteDonor(Long id);
    Donor updateDonor(Donor donor);

    // Campaign methods
    Campaign addCampaign(Campaign campaign);
    List<Campaign> getAllCampaigns();
    Optional<Campaign> getCampaignById(Long id);
    void deleteCampaign(Long id);

    // Admin Registration and Login methods
    Admin registerAdmin(Admin admin);
    String loginAdmin(Admin admin);

    // Additional admin operations can be added here
}
