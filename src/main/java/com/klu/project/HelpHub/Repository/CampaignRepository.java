package com.klu.project.HelpHub.Repository;

import com.klu.project.HelpHub.Model.Campaign;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface CampaignRepository extends JpaRepository<Campaign, Long> {

    // Optional method to find a campaign by its name (if needed)
    Optional<Campaign> findByName(String name);

    // You can add more custom query methods if needed
}
