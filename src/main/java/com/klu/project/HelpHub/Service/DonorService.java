package com.klu.project.HelpHub.Service;


import com.klu.project.HelpHub.Model.Donor;
public interface DonorService {
	
	public String donorRegistration(Donor donor);
	public  Donor checkdonorLogin(String email,String password);
	 public Donor getDonorByUsername(String username); 
}
