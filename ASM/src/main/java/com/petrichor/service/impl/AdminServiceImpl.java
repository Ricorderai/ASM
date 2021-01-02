package com.petrichor.service.impl;

import com.petrichor.mapper.AdminMapper;
import com.petrichor.pojo.Admin;
import com.petrichor.pojo.Customer;
import com.petrichor.pojo.Department;
import com.petrichor.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminMapper adminMapper;
    
    @Override
    public Admin adminLogin(Admin admin) {
        return adminMapper.adminLogin(admin);
    }

    @Override
    public List<Admin> findAdmin(String account) {
        return adminMapper.findAdmin(account);
    }

    @Override
    public List<Customer> adminFindCustomer(Integer id) {
        return adminMapper.adminFindCustomer(id);
    }

    @Override
    public List<Customer> adminToUpdateCustomerFirst() {
        return adminMapper.adminToUpdateCustomerFirst();
    }

    @Override
    public void adminUpdateCustomer(Customer customer) {
        adminMapper.adminUpdateCustomer(customer);
    }

    @Override
    public void deleteCustomer(Integer id) {
        adminMapper.deleteCustomer(id);
        
    }

    @Override
    public List<Department> findDepartment(String roomId) {
        return adminMapper.findDepartment(roomId);
    }

    @Override
    public List<Department> toUpdateDepartment() {
        return adminMapper.toUpdateDepartment();
    }

    @Override
    public void updateDepartment(Department department) {
        adminMapper.updateDepartment(department);
    }
}
