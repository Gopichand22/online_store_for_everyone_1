package com.onlinestore.matters.services.impl;

import com.onlinestore.matters.dao.RegisterDao;
import com.onlinestore.matters.dao.impl.RegisterDaoImpl;
import com.onlinestore.matters.models.Register;
import com.onlinestore.matters.services.RegisterService;

public class RegisterServiceImpl implements RegisterService{

	@Override
	public boolean registerDetails(String firstName, String lastName, String userName, String email, String password,
			String storeName, String gender,String dob, String address, String city, String state, String country) {
		Register reg=new Register();
		reg.setFirstName(firstName);
		reg.setLastName(lastName);
		reg.setUserName(userName);
		reg.setEmail(email);
		reg.setPass(password);
		reg.setStoreName(storeName);  
		reg.setGender(gender); 
		reg.setDob(dob);
		reg.setAddress(address);
		reg.setCity(city);
		reg.setState(state);
		reg.setCountry(country);
		boolean status;
		RegisterDao regDao=new RegisterDaoImpl();
		status=regDao.registerUser(reg);
		return status;
	}

}
