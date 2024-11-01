package com.klu.project.HelpHub.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.project.HelpHub.Model.Donor;
import com.klu.project.HelpHub.Repository.DonorRepository;

@Service
public class DonorServiceImpl implements DonorService{
	
	@Autowired
	private DonorRepository donorRepository;
	
	@Override
	public String donorRegistration(Donor donor) {
		// TODO Auto-generated method stub
		donorRepository.save(donor);
		return "donor Registered Successfully";
	}
	@Override
	public Donor checkdonorLogin(String email, String password) {
		return donorRepository.checkdonorLogin(email, password);
	}
	@Override
	public Donor getDonorByUsername(String username) {
	    return donorRepository.findByUsername(username);
	}
	
	

}
