package com.jspiders.cardekho_case_study_mvc.repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.jspiders.cardekho_case_study_mvc.pojo.AdminPOJO;

@Repository
public class AdminRepository {
	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction transaction;
	private static Query query;

	private static void openConnection() {
		factory = Persistence.createEntityManagerFactory("cardekhoMVC");
		manager = factory.createEntityManager();
		transaction = manager.getTransaction();
	}

	private static void closeConnection() {
		if (factory != null) {
			factory.close();
		}
		if (manager != null) {
			manager.close();
		}
		if (transaction != null) {
			if (transaction.isActive()) {
				transaction.rollback();
			}
		}
	}

	
	
	
	@SuppressWarnings("finally")
	public AdminPOJO checkAdmin() {
		openConnection();
		transaction.begin();
		String jpql = "from AdminPOJO";
		query = manager.createQuery(jpql);
		AdminPOJO pojo = null;
		try {
			pojo = (AdminPOJO) query.getSingleResult();
		} finally {
			transaction.commit();
			closeConnection();
			return pojo;
		}

	}

	public AdminPOJO createNewAdmin(String userName, String password) {
	openConnection();
	transaction.begin();
	AdminPOJO pojo= new AdminPOJO();
	pojo.setUserName(userName);
	pojo.setPassword(password);
	manager.persist(pojo);
	transaction.commit();
	closeConnection();
		return pojo;
	}

	public AdminPOJO adminLogin(String userName, String password) {
		openConnection();
		transaction.begin();
		AdminPOJO admin=manager.find(AdminPOJO.class, userName);
		if(admin!=null) {
			if(admin.getPassword().equals(password)) {
				return admin;
			}
			transaction.commit();
			closeConnection();
			return null;
		}
		transaction.commit();
		closeConnection();
		return null;
	}

}
