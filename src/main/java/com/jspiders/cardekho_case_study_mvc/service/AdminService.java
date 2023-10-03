package com.jspiders.cardekho_case_study_mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jspiders.cardekho_case_study_mvc.pojo.AdminPOJO;
import com.jspiders.cardekho_case_study_mvc.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository repository;

	public AdminPOJO checkAdmin() {
		AdminPOJO pojo=repository.checkAdmin();
		return pojo;
	}

	public AdminPOJO createNewAdmin(String userName, String password) {
		AdminPOJO pojo=repository.createNewAdmin(userName,password);
		return pojo;
	}

	public AdminPOJO adminLogin(String userName, String password) {
		AdminPOJO pojo=repository.adminLogin(userName,password);
		return pojo;
	}

}
