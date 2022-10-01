package com.gl.custrelmgmt.dao;

import java.util.List;

import com.gl.custrelmgmt.model.Customer;

public interface CustomerDao {
	public void saveOrUpdate(Customer customer);
	public void delete(int id);
	public Customer findById(int id);
	public List<Customer>findAll();

}
