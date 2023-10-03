package com.jspiders.cardekho_case_study_mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.jspiders.cardekho_case_study_mvc.pojo.AdminPOJO;
import com.jspiders.cardekho_case_study_mvc.pojo.CarPOJO;
import com.jspiders.cardekho_case_study_mvc.service.CarService;

@Controller
public class CarController {
	@Autowired
	private CarService service;

	@GetMapping("/home")
	public String home(ModelMap map,@SessionAttribute(name="token",required = false)AdminPOJO adminPojo) {
		if(adminPojo!=null) {
			return "Home";
		}
		map.addAttribute("msg", "Session Experied Please Login Again To Continue...");	
		return "Login";
	}

	@GetMapping("/login")
	public String login() {
		return "Login";
	}

	@GetMapping("/add")
	public String add(ModelMap map,@SessionAttribute(name="token",required = false)AdminPOJO adminPojo) {
		if(adminPojo!=null) {
			return "Add";
		}
		map.addAttribute("msg", "Session Experied Please Login Again To Continue...");	
		return "Login";
	}

	@PostMapping("/addCar")
	public String addCarDetails(@SessionAttribute(name="token",required = false)AdminPOJO adminPojo,@RequestParam String carName, 
			@RequestParam String brandName,@RequestParam String fuelType, @RequestParam double price, ModelMap map) {
		if(adminPojo!=null) {
			CarPOJO pojo = service.addCarDetails(carName, brandName, fuelType, price);
			if (pojo != null) {
				map.addAttribute("car", pojo);
				map.addAttribute("msg", "Car Details Added Successfully...");
				return "Add";
			}
			map.addAttribute("msg", "Unable to add Car Details...");
			return "Add";
		}	
		map.addAttribute("msg", "Session Experied Please Login Again To Continue...");	
		return "Login";
	}
	@GetMapping("/remove")
	public String removeCarDetailsPage(@SessionAttribute(name="token",required = false)AdminPOJO adminPojo,ModelMap map) {
		if(adminPojo!=null) {
			List<CarPOJO> carList = service.allCarList();
			if (carList.isEmpty() == false) {
				map.addAttribute("carList", carList);
				return "Remove";
			}
			map.addAttribute("carList", carList);
			map.addAttribute("msg", "No Cars Added In Database");
			return "Remove";
		}
		map.addAttribute("msg", "Session Experied Please Login Again To Continue...");	
		return "Login";

	}

	@PostMapping(path = "/removeCar")
	public String removeCarDetails(@SessionAttribute(name="token",required = false)AdminPOJO adminPojo,@RequestParam int carID, ModelMap map) {
		if(adminPojo!=null) {
			List<CarPOJO> carList = service.allCarList();
			CarPOJO pojo = service.removeCar(carID);
			if (pojo != null) {
				carList = service.allCarList();
				map.addAttribute("car", pojo);
				map.addAttribute("msg", "Car Details Removed Successfully...");
				map.addAttribute("carList", carList);
				return "Remove";
			}
			carList = service.allCarList();
			map.addAttribute("msg", "Enter Valid Car ID Unable to remove Car Details..");
			map.addAttribute("carList", carList);
			return "Remove";
		}
		map.addAttribute("msg", "Session Experied Please Login Again To Continue...");	
		return "Login";
	}

	@GetMapping("/update")
	public String updateCarPage(@SessionAttribute(name="token",required = false)AdminPOJO adminPojo,ModelMap map) {
		if(adminPojo!=null) {
			List<CarPOJO> carList = service.allCarList();
			if (carList.isEmpty() == false) {
				map.addAttribute("carList", carList);
				return "Update";
			}
			map.addAttribute("msg", "No Car Details To Update...");
			return "Update";
		}
		map.addAttribute("msg", "Session Experied Please Login Again To Continue...");	
		return "Login";
		}

	@PostMapping(path = "updateCar")
	public String updateCarDetails(@SessionAttribute(name="token",required = false)AdminPOJO adminPojo,@RequestParam int carID, ModelMap map) {
		if(adminPojo!=null) {
			List<CarPOJO> carList = service.allCarList();
			CarPOJO pojo = service.updateCarDetails(carID);
			if (pojo != null) {
				map.addAttribute("carList", carList);
				map.addAttribute("car", pojo);
				map.addAttribute("msg", "Car Details Found...");
				return "Update";
			}
			map.addAttribute("carList", carList);
			map.addAttribute("car", pojo);
			map.addAttribute("msg", "Car Details Not Found...");
			return "Update";
		}
		map.addAttribute("msg", "Session Experied Please Login Again To Continue...");	
		return "Login";
	}

	@PostMapping("/updatingCar")
	public String updatingCarDetails(@SessionAttribute(name="token",required = false)AdminPOJO adminPojo,@RequestParam int carID, @RequestParam String carName,
			@RequestParam String brandName, @RequestParam String fuelType, @RequestParam double price, ModelMap map) {
		if(adminPojo!=null) {
			List<CarPOJO> carList = service.allCarList();
			CarPOJO pojo = service.updatingCarDetails(carID, carName, brandName, fuelType, price);
			if (pojo != null) {
				carList = service.allCarList();
				map.addAttribute("msg", "Car Details Updated Successfully");
				map.addAttribute("carList", carList);
				return "Update";
			}
			carList = service.allCarList();
			map.addAttribute("msg", "Unable to Updated Car Details...");
			map.addAttribute("carList", carList);
			return "Update";
		}
		map.addAttribute("msg", "Session Experied Please Login Again To Continue...");	
		return "Login";
	}

	@GetMapping("/search")
	public String searchCarDetailsPage(@SessionAttribute(name="token",required = false)AdminPOJO adminPojo,ModelMap map) {
		if(adminPojo!=null) {
			return "Search";
		}
		map.addAttribute("msg", "Session Experied Please Login Again To Continue...");	
		return "Login";
	}

	@PostMapping("/searchCar")
	public String searchCarDetails(@SessionAttribute(name="token",required = false)AdminPOJO adminPojo,@RequestParam String option, @RequestParam String optionValue, ModelMap map) {
		if(adminPojo!=null) {
			List<CarPOJO> carList = null;
			if (option.equals("carID")) {
				carList = (List<CarPOJO>) service.searchCarDetailsByID(optionValue);
				if (carList != null) {
					if (!carList.isEmpty()) {
						map.addAttribute("msg", "Car Details Found For Given ID...");
						map.addAttribute("carList", carList);
						return "Search";
					}
					map.addAttribute("msg", "NO Car Details Found For Given ID...");
					return "Search";
				}
				map.addAttribute("msg", "NO Car Details Found For Given ID...");
				return "Search";
			}
			if (option.equals("carName")) {
				carList = (List<CarPOJO>) service.searchCarDetailsByName(optionValue);
				if (!carList.isEmpty()) {
					map.addAttribute("msg", "Car Details Found For Given Name...");
					map.addAttribute("carList", carList);
					return "Search";
				}
				map.addAttribute("msg", "NO Car Details Found For Given Name...");
				return "Search";
			}
			if (option.equals("brandName")) {
				carList = (List<CarPOJO>) service.searchCarDetailsByBrand(optionValue);
				if (!carList.isEmpty()) {
					map.addAttribute("msg", "Car Details Found For Given Brand...");
					map.addAttribute("carList", carList);
					return "Search";
				}
				map.addAttribute("msg", "NO Car Details Found For Given Brand...");
				return "Search";
			}
			if (option.equals("fuelType")) {
				carList = (List<CarPOJO>) service.searchCarDetailsByFuel(optionValue);
				if (!carList.isEmpty()) {
					map.addAttribute("msg", "Car Details Found For Given Fuel Type...");
					map.addAttribute("carList", carList);
					return "Search";
				}
				map.addAttribute("msg", "NO Car Details Found For Given Fuel Type...");
				return "Search";
			}
			if (option.equals("price")) {
				carList = (List<CarPOJO>) service.searchCarDetailsByPrice(optionValue);
				if (!carList.isEmpty()) {
					map.addAttribute("msg", "Car Details Found For Given Price...");
					map.addAttribute("carList", carList);
					return "Search";
				}
				map.addAttribute("msg", "NO Car Details Found For Given Price...");
				return "Search";
			}
			return "Search";
		}	
		map.addAttribute("msg", "Session Experied Please Login Again To Continue...");	
		return "Login";
		}
}
