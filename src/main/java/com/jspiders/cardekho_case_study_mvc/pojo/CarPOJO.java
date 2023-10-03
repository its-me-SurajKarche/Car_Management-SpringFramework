package com.jspiders.cardekho_case_study_mvc.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class CarPOJO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int carID;
	private String carName;
	private String brandName;
	private String fuelType;
	private double price;
}
