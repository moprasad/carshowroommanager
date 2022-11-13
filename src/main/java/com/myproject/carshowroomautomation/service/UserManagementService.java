package com.myproject.carshowroomautomation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.carshowroomautomation.model.Security;
import com.myproject.carshowroomautomation.model.UserRegistration;

@Service
public class UserManagementService {

	@Autowired
	private DatabaseServiceImpl databaseServiceImpl;
	
	public String registerUser(UserRegistration userRegistration) {
		String message = "";
		if (userRegistration.getName() != null) {
			try {
				Security userLogin = databaseServiceImpl.getEmployee(userRegistration.getName());
				if (userLogin != null) {
					message = "UserId/Login clready created..... choose another login ID.";
				} else {
					databaseServiceImpl.registerEmployee(userRegistration);
					message = "User Created.....";
				}
			} catch (Exception ex) {
				System.out.println("exception while performing db operation : " + ex);
			}
		} else {
			message = "username required";
		}
		return message;
	}

}
