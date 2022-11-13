package com.myproject.carshowroomautomation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WelcomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showWelcomePage(ModelMap model) {
		return "welcome";
	}
	
	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String aboutus(ModelMap model) {
		return "aboutus";
	}

	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String contactus(ModelMap model) {
		return "contactus";
	}

	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String news(ModelMap model) {
		return "news";
	}

	@RequestMapping(value = "/userlogin", method = RequestMethod.GET)
	public String userlogin(ModelMap model) {
		return "userlogin";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(ModelMap model) {
		return "admin";
	}
	
	@RequestMapping(value = "/userRegistration", method = RequestMethod.GET)
	public String userRegistration(ModelMap model) {
		return "newuser";
	}
	
	@RequestMapping(value = "/photogallery", method = RequestMethod.GET)
	public String photogallery(ModelMap model) {
		return "photogallery";
	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registerUser(ModelMap model, javax.servlet.http.HttpServletRequest request,
			javax.servlet.http.HttpServletResponse response) {
		return "registrationconfirmation";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String authenticate(ModelMap model, javax.servlet.http.HttpServletRequest request,
			javax.servlet.http.HttpServletResponse response) {
		return "login";
	}
	
	@RequestMapping(value = "/vehiclestockdisplay", method = RequestMethod.GET)
	public String vehiclestockdis(ModelMap model) {
		return "vehiclestockdis";
	}
	
	@RequestMapping(value = "/customerdisplay", method = RequestMethod.GET)
	public String customerdisplay(ModelMap model) {
		return "customerdis";
	}
	
	@RequestMapping(value = "/salarydisplay", method = RequestMethod.GET)
	public String salarydisplay(ModelMap model) {
		return "salarydis";
	}
	
	@RequestMapping(value = "/employeedisplay", method = RequestMethod.GET)
	public String employeedisplay(ModelMap model) {
		return "employeedis";
	}

	@RequestMapping(value = "/bookingdisplay", method = RequestMethod.GET)
	public String bookingdisplay(ModelMap model) {
		return "bookingdis";
	}
	
	@RequestMapping(value = "/allotmentdisplay", method = RequestMethod.GET)
	public String allotmentdisplay(ModelMap model) {
		return "allotmentdis";
	}
	
	@RequestMapping(value = "/deliverydisplay", method = RequestMethod.GET)
	public String deliverydisplay(ModelMap model) {
		return "deliverydis";
	}

	@RequestMapping(value = "/paymentdisplay", method = RequestMethod.GET)
	public String paymentdisplay(ModelMap model) {
		return "paymentdis";
	}

	@RequestMapping(value = "/vehiclestockform", method = RequestMethod.GET)
	public String vehiclestockform(ModelMap model) {
		return "vehiclestockform";
	}
	
	@RequestMapping(value = "/customerform", method = RequestMethod.GET)
	public String customerform(ModelMap model) {
		return "customerform";
	}
	
	@RequestMapping(value = "/salaryform", method = RequestMethod.GET)
	public String salaryform(ModelMap model) {
		return "salaryform";
	}
	
	@RequestMapping(value = "/employeeform", method = RequestMethod.GET)
	public String employeeform(ModelMap model) {
		return "employeeform";
	}

	@RequestMapping(value = "/bookingform", method = RequestMethod.GET)
	public String bookingform(ModelMap model) {
		return "bookingform";
	}
	
	@RequestMapping(value = "/allotmentform", method = RequestMethod.GET)
	public String allotmentform(ModelMap model) {
		return "allotmentform";
	}
	
	@RequestMapping(value = "/deliveryform", method = RequestMethod.GET)
	public String deliveryform(ModelMap model) {
		return "deliveryform";
	}

	@RequestMapping(value = "/paymentform", method = RequestMethod.GET)
	public String paymentform(ModelMap model) {
		return "paymentform";
	}

	@RequestMapping(value = "/vehiclestockupdate", method = RequestMethod.POST)
	public String vehiclestockupdate(ModelMap model, javax.servlet.http.HttpServletRequest request,
			javax.servlet.http.HttpServletResponse response) {
		return "vehiclestock";
	}
	
	@RequestMapping(value = "/customerupdate", method = RequestMethod.POST)
	public String customerupdate(ModelMap model, javax.servlet.http.HttpServletRequest request,
			javax.servlet.http.HttpServletResponse response) {
		return "customer";
	}
	
	@RequestMapping(value = "/salaryupdate", method = RequestMethod.POST)
	public String salaryupdate(ModelMap model, javax.servlet.http.HttpServletRequest request,
			javax.servlet.http.HttpServletResponse response) {
		return "salary";
	}
	
	@RequestMapping(value = "/employeeupdate", method = RequestMethod.POST)
	public String employeeupdate(ModelMap model, javax.servlet.http.HttpServletRequest request,
			javax.servlet.http.HttpServletResponse response) {
		return "employee";
	}
	
	@RequestMapping(value = "/bookingupdate", method = RequestMethod.POST)
	public String bookingupdate(ModelMap model, javax.servlet.http.HttpServletRequest request,
			javax.servlet.http.HttpServletResponse response) {
		return "booking";
	}
	
	@RequestMapping(value = "/allotmentupdate", method = RequestMethod.POST)
	public String allotmentupdate(ModelMap model, javax.servlet.http.HttpServletRequest request,
			javax.servlet.http.HttpServletResponse response) {
		return "allotment";
	}
	
	@RequestMapping(value = "/deliveryupdate", method = RequestMethod.POST)
	public String deliveryupdate(ModelMap model, javax.servlet.http.HttpServletRequest request,
			javax.servlet.http.HttpServletResponse response) {
		return "delivery";
	}
	
	@RequestMapping(value = "/paymentupdate", method = RequestMethod.POST)
	public String paymentupdate(ModelMap model, javax.servlet.http.HttpServletRequest request,
			javax.servlet.http.HttpServletResponse response) {
		return "payment";
	}
}
