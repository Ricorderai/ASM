package com.petrichor.service.impl;

import com.petrichor.mapper.CustomerMapper;
import com.petrichor.pojo.Customer;
import com.petrichor.pojo.Department;
import com.petrichor.pojo.Reply;
import com.petrichor.pojo.Word;
import com.petrichor.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
    /*数据层对象*/
    @Autowired
    CustomerMapper customerMapper;
    
    @Override
    public boolean customerLogin(Customer customer) {
        System.out.println("服务层：顾客登录");
        if(customerMapper.customerLogin(customer) == null) {
            return false;
        } else {
            return true;
        }
        
    }

    @Override
    public void customerRegister(Customer customer) {
        System.out.println("服务层：顾客注册");
        System.out.println(customer.getStartTime());
        System.out.println(customer.getId());
        customerMapper.customerRegister(customer);
    }

    @Override
    public void updateCustomer(Customer customer) {
        customerMapper.updateCustomer(customer);
    }

    @Override
    public List<Customer> findCustomer(Integer id) {
        return customerMapper.findCustomer(id);
    }

    @Override
    public List<Department> chooseDepartment(String roomId) {
        return customerMapper.chooseDepartment(roomId);
    }

    @Override
    public void changeCustomer(Customer customer) {
        customerMapper.changeCustomer(customer);
    }

    @Override
    public void changeDepartment(Department department) {
        customerMapper.changeDepartment(department);
    }

    @Override
    public List<Word> findWord() {
        return customerMapper.findWord();
    }

    @Override
    public List<Reply> findReply() {
        return customerMapper.findReply();
    }
}
