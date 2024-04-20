package com.sumanthProgram.DMS.respository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.sumanthProgram.DMS.Models.Dog;

public interface DogRepository extends CrudRepository<Dog,Integer> {
	List<Dog> findByName(String name);
	
	

}
