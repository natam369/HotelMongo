package com.mindtree.hotelmanagementmongodb.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.hotelmanagementmongodb.mongo.Hotel;

@Repository
public interface HotelRepo extends MongoRepository<Hotel, Integer> {

	public Hotel findHotelByHotelName(String name);

}
