package com.mindtree.hotelmanagementmongodb.service;

import java.util.List;

import com.mindtree.hotelmanagementmongodb.mongo.Hotel;

public interface HotelService {

	public Hotel addHotel(Hotel hotel);

	public List<Hotel> getAllHotels();

}
