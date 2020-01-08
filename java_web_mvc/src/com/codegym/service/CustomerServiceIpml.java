package com.codegym.service;

import com.codegym.model.Customer;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceIpml implements CustomerService{
    private static Map<Integer, Customer> customers;
    static {
        customers = new HashMap<>();
        customers.put(1,new Customer(1, "John", "john@gmail.com", "LonDon"));
        customers.put(2,new Customer(2, "david", "david@gmail.com", "USA"));
        customers.put(3,new Customer(3, "jay", "jay@gmail.com", "China"));
        customers.put(4,new Customer(4, "micky", "mickey@gmail.com", "Berlin"));
        customers.put(5,new Customer(5, "quang", "quang@gmail.com", "Hue"));
        customers.put(6,new Customer(6, "lucky", "lucky@gmail.com", "LonDon"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
    customers.put(customer.getCustomer_id(), customer);
    }

    @Override
    public Customer findById(int customer_id) {
        return customers.get(customer_id);
    }

    @Override
    public void update(int customer_id, Customer customer) {
    customers.put(customer_id, customer);
    }

    @Override
    public void remove(int customer_id) {
    customers.remove(customer_id);
    }
}
