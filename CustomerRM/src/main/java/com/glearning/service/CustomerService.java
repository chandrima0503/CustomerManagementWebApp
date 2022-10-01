package com.glearning.service;

import java.util.List;
import com.glearning.entity.Customer;

public interface CustomerService {

	public List<Customer> findall();
	public Customer findById(int id);
	
	public void save (Customer customer);
	public void delete (int id);
}
