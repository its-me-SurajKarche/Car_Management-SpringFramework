package com.jspiders.cardekho_case_study_mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jspiders.cardekho_case_study_mvc.pojo.CarPOJO;
import com.jspiders.cardekho_case_study_mvc.repository.CarRepository;

@Service
public class CarService {
	@Autowired
	private CarRepository repository;

	public CarPOJO addCarDetails(String carName, String brandName, String fuelType, double price) {
		CarPOJO pojo = repository.addCarDetails(carName, brandName, fuelType, price);
		return pojo;
	}

	public List<CarPOJO> allCarList() {
		List<CarPOJO> carList = repository.allCarList();
		return carList;
	}

	public CarPOJO removeCar(int carID) {
		CarPOJO pojo = repository.removeCar(carID);
		return pojo;
	}

	public CarPOJO updateCarDetails(int carID) {
		CarPOJO pojo = repository.updateCarDetails(carID);
		return pojo;
	}

	public CarPOJO updatingCarDetails(int carID, String carName, String brandName, String fuelType, double price) {
		CarPOJO pojo = repository.updatingCarDetails(carID, carName, brandName, fuelType, price);
		return pojo;
	}

	public List<CarPOJO> searchCarDetailsByID(String optionValue) {
		List<CarPOJO> carList = repository.searchCarDetailsByID(optionValue);
		return carList;
	}

	public List<CarPOJO> searchCarDetailsByName(String optionValue) {
		List<CarPOJO> carList = repository.searchCarDetailsByName(optionValue);
		return carList;
	}

	public List<CarPOJO> searchCarDetailsByBrand(String optionValue) {
		List<CarPOJO> carList = repository.searchCarDetailsByBrand(optionValue);
		return carList;
	}

	public List<CarPOJO> searchCarDetailsByFuel(String optionValue) {
		List<CarPOJO> carList = repository.searchCarDetailsByFuel(optionValue);
		return carList;
	}

	public List<CarPOJO> searchCarDetailsByPrice(String optionValue) {
		List<CarPOJO> carList = repository.searchCarDetailsByPrice(optionValue);
		return carList;
	}

}
