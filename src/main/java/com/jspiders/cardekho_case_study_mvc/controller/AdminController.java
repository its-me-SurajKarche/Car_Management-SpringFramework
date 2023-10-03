package com.jspiders.cardekho_case_study_mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jspiders.cardekho_case_study_mvc.pojo.AdminPOJO;
import com.jspiders.cardekho_case_study_mvc.service.AdminService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	@Autowired
	private AdminService service;

	@GetMapping("/logout")
	public String adminLogout(HttpSession session) {
		session.invalidate();
		return "Login";
	}

	@GetMapping("/createAdmin")
	public String createAdmin(ModelMap map) {
		AdminPOJO pojo = service.checkAdmin();
		if (pojo != null) {
			map.addAttribute("msg", "Admin Already Exists");
			return "Login";
		}
		return "CreateAccount";
	}

	@PostMapping("/createNewAdmin")
	public String createNewAdmin(@RequestParam String userName, @RequestParam String password, ModelMap map) {
		AdminPOJO pojo = service.createNewAdmin(userName, password);
		if (pojo != null) {
			map.addAttribute("msg", "Admin Created Successfully");
			return "Login";
		}
		map.addAttribute("msg", "Unable to create admin");
		return "Login";
	}

	@PostMapping("/login")
	public String adminLogin(@RequestParam String userName, @RequestParam String password, ModelMap map,HttpSession session) {
		AdminPOJO pojo = service.adminLogin(userName, password);
		if (pojo != null) {
			session.setAttribute("token", pojo);
			//session.setMaxInactiveInterval(60);
			return "Home";
		}
		map.addAttribute("msg", "Invalid Credentials Please try again...");
		return "Login";

	}
}
