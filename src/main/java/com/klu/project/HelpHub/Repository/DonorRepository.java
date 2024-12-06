package com.klu.project.HelpHub.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klu.project.HelpHub.Model.Donor;

public interface DonorRepository extends JpaRepository<Donor, Long>{

	
	@Query("select d from Donor d where d.email=?1  and d.password=?2")
	  public Donor checkdonorLogin(String email, String  password);
	
	 @Query("select d from Donor d where d.username=?1")
	    public Donor findByUsername(String username); // New method
}
