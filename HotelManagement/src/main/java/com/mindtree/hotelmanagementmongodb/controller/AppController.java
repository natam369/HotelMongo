package com.mindtree.hotelmanagementmongodb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mindtree.hotelmanagementmongodb.mongo.Hotel;
import com.mindtree.hotelmanagementmongodb.service.HotelService;

//@CrossOrigin(origins = "http://localhost:8095")
@Controller
public class AppController {

	@Autowired
	HotelService hotelService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String loadIndex() {
		System.out.println("Hello");
		return "index";
	}

	@RequestMapping(value = "/addHotel", method = RequestMethod.POST)
	public String addHotel(Hotel hotel, ModelMap modelMap) {

		Hotel savedHotel = hotelService.addHotel(hotel);

		modelMap.addAttribute("saved", savedHotel);

		return "index";
	}

	@RequestMapping(value = "/getHotels", method = RequestMethod.GET)
	public String getAllHotels(ModelMap modelMap) {

		List<Hotel> allHotels = hotelService.getAllHotels();

		modelMap.addAttribute("hotels", allHotels);

		return "display";
	}

}
