package com.myproject.carshowroomautomation.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class Security {

	private String username;
	private String password;
	private String hintQuestion;
}
