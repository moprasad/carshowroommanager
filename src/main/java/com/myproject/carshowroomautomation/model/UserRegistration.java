package com.myproject.carshowroomautomation.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class UserRegistration {
	
	private String name;
	private String password1;
	private String password2;
	private String hintQuestion;
	private String role;

}
