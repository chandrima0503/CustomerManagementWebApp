package com.glearning.dao;

import java.util.List;

import com.glearning.entity.Customer;

public interface CustomerDAO {

	public List<Customer> findall();
	public Customer findById(int id);
	
	
	public void save(Customer customer);
	public void delete(int id);
	
}
