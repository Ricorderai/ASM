package com.petrichor.service;

import com.petrichor.pojo.Admin;
import com.petrichor.pojo.Customer;
import com.petrichor.pojo.Department;

import java.util.List;

public interface AdminService {
    /**登录*/
    Admin adminLogin(Admin admin);
    
    /**查看*/
    List<Admin> findAdmin(String account);
    
    /**查找客户*/
    List<Customer> adminFindCustomer(Integer id);
    
    /**编辑*/
    List<Customer> adminToUpdateCustomerFirst();
    void adminUpdateCustomer(Customer customer);
    
    /**删除*/
    void deleteCustomer(Integer id);
    
    /**查找公寓*/
    List<Department> findDepartment(String roomId);
    
    /**编辑*/
    List<Department> toUpdateDepartment();
    void updateDepartment(Department department);



}
