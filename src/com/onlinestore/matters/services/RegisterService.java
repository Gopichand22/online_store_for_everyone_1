package com.onlinestore.matters.services;

public interface RegisterService {

	boolean registerDetails(String firstName, String lastName, String userName, String email, String password,
			String storeName, String gender,String dob, String address, String city, String state, String country);

	
	
}
