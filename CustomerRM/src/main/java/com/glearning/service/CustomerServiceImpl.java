package com.glearning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.glearning.dao.CustomerDAO;
import com.glearning.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDAO customerDAOImpl;

	@Override
	public List<Customer> findall() {
		// TODO Auto-generated method stub
		return customerDAOImpl.findall();

	}

	@Override
	public Customer findById(int id) {
		// TODO Auto-generated method stub
		return customerDAOImpl.findById(id);
	}

	@Override
	public void save(Customer customer) {
		// TODO Auto-generated method stub
		customerDAOImpl.save(customer);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		customerDAOImpl.delete(id);
	}

}
