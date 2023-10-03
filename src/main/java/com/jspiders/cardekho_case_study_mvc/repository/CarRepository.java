package com.jspiders.cardekho_case_study_mvc.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.jspiders.cardekho_case_study_mvc.pojo.CarPOJO;

@Repository
public class CarRepository {

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

	@SuppressWarnings("unused")
	public CarPOJO addCarDetails(String carName, String brandName, String fuelType, double price) {
		openConnection();
		transaction.begin();
		CarPOJO pojo = new CarPOJO();
		pojo.setCarName(carName);
		pojo.setBrandName(brandName);
		pojo.setFuelType(fuelType);
		pojo.setPrice(price);
		if (pojo != null) {
			manager.persist(pojo);
			transaction.commit();
			closeConnection();
			return pojo;
		}
		transaction.commit();
		closeConnection();
		return null;
	}

	public List<CarPOJO> allCarList() {
		openConnection();
		transaction.begin();
		String jpql = "from CarPOJO";
		query = manager.createQuery(jpql);
		@SuppressWarnings("unchecked")
		List<CarPOJO> carList = query.getResultList();
		transaction.commit();
		closeConnection();
		return carList;
	}

	public CarPOJO removeCar(int carID) {
		openConnection();
		transaction.begin();
		CarPOJO pojo = manager.find(CarPOJO.class, carID);
		if (pojo != null) {
			manager.remove(pojo);
			transaction.commit();
			closeConnection();
			return pojo;
		}
		transaction.commit();
		closeConnection();
		return pojo;
	}

	public CarPOJO updateCarDetails(int carID) {
		openConnection();
		transaction.begin();
		CarPOJO pojo = manager.find(CarPOJO.class, carID);
		transaction.commit();
		closeConnection();
		return pojo;
	}

	public CarPOJO updatingCarDetails(int carID, String carName, String brandName, String fuelType, double price) {
		openConnection();
		transaction.begin();
		CarPOJO pojo = manager.find(CarPOJO.class, carID);
		if (pojo != null) {
			pojo.setCarName(carName);
			pojo.setBrandName(brandName);
			pojo.setFuelType(fuelType);
			pojo.setPrice(price);
			manager.persist(pojo);
			transaction.commit();
			closeConnection();
			return pojo;
		}
		transaction.commit();
		closeConnection();
		return pojo;
	}

	@SuppressWarnings({ "unchecked", "finally" })
	public List<CarPOJO> searchCarDetailsByID(String optionValue) {
		openConnection();
		transaction.begin();
		List<CarPOJO> carList = null;
		try {
			String jpql = "from CarPOJO where carID=" + optionValue;
			query = manager.createQuery(jpql);
			carList = query.getResultList();
		} finally {
			transaction.commit();
			closeConnection();
			return carList;
		}

	}

	@SuppressWarnings({ "unchecked", "finally" })
	public List<CarPOJO> searchCarDetailsByName(String optionValue) {
		openConnection();
		transaction.begin();
		List<CarPOJO> carList = null;
		try {
			String jpql = "from CarPOJO where carName in ('" + optionValue + "')";
			query = manager.createQuery(jpql);
			carList = query.getResultList();
		} finally {
			transaction.commit();
			closeConnection();
			return carList;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	public List<CarPOJO> searchCarDetailsByBrand(String optionValue) {
		openConnection();
		transaction.begin();
		List<CarPOJO> carList = null;
		try {
			String jpql = "from CarPOJO where brandName in ('" + optionValue + "')";
			query = manager.createQuery(jpql);
			carList = query.getResultList();
		} finally {
			transaction.commit();
			closeConnection();
			return carList;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	public List<CarPOJO> searchCarDetailsByFuel(String optionValue) {
		openConnection();
		transaction.begin();
		List<CarPOJO> carList = null;
		try {
			String jpql = "from CarPOJO where fuelType in ('" + optionValue + "')";
			query = manager.createQuery(jpql);
			carList = query.getResultList();
		} finally {
			transaction.commit();
			closeConnection();
			return carList;
		}
	}

	@SuppressWarnings({ "unchecked", "finally" })
	public List<CarPOJO> searchCarDetailsByPrice(String optionValue) {
		openConnection();
		transaction.begin();
		List<CarPOJO> carList = null;
		try {
			String jpql = "from CarPOJO where price in ('" + optionValue + "')";
			query = manager.createQuery(jpql);
			carList = query.getResultList();
		} finally {
			transaction.commit();
			closeConnection();
			return carList;
		}
	}

}
