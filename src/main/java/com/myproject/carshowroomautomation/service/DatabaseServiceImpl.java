package com.myproject.carshowroomautomation.service;

import org.springframework.stereotype.Service;

import com.myproject.carshowroomautomation.model.Security;
import com.myproject.carshowroomautomation.model.UserRegistration;
import com.myproject.carshowroomautomation.util.DBOperationUtil;

@Service
public class DatabaseServiceImpl {

	public Security getEmployee(String userName) throws Exception {
		String query = "select * from security Where username='" + userName + "'";
		return DBOperationUtil.getEmployee(query);
	}
	
	public void registerEmployee(UserRegistration userInfo) throws Exception {
		String query = "insert into security values('" + userInfo.getName() + "','" + userInfo.getPassword1() + "','" + userInfo.getHintQuestion()
				+ "','" + userInfo.getRole() + "')";
		DBOperationUtil.updateEmployee(query);
	}
	
	/*
	public void updateEmployees(UserInfo userInfo) throws Exception {
		String query = "UPDATE GRS_EMPLOYEE SET Name='" + userInfo.getName() + "', FatherName='" + userInfo.getFatherName()
				+ "', DOB='" + userInfo.getDob() + "', Qualification='" + userInfo.getQualification() + "', Designation='"
				+ userInfo.getDesignation() + "', ContactNumber='" + userInfo.getContactNumber() + "', EmailId='" + userInfo.getEmailId()
				+ "', Address='" + userInfo.getAddress() + "', ValidTill='" + userInfo.getValidTill()
				+ "', IdentificationType='" + userInfo.getIdentificationType() + "', IdentificationNumber='" + userInfo.getIdentificationNumber()
				+ "', Status='" + userInfo.getStatus() + "' WHERE EmployeeId='" + userInfo.getEmployeeId() + "'";
		DBOperationUtil.updateEmployee(query);

	}

	public List<UserInfo> getEmployees() throws Exception {
		String query = "SELECT * FROM GRS_EMPLOYEE";
		return DBOperationUtil.getEmployees(query);
	}*/
	
}
