package com.petrichor.service;

import com.petrichor.pojo.Customer;
import com.petrichor.pojo.Department;
import com.petrichor.pojo.Reply;
import com.petrichor.pojo.Word;

import java.util.List;

public interface CustomerService {
    // 顾客登录
    boolean customerLogin(Customer customer);
    
    // 顾客注册
    void customerRegister(Customer customer);
    
    // 顾客修改个人信息
    void updateCustomer(Customer customer);
    
    // 查看顾客信息
    List<Customer> findCustomer(Integer id);
    
    // 进入选择公寓界面
    List<Department> chooseDepartment(String roomId);
    
    // 顾客数据更新
    void changeCustomer(Customer customer);
    // 公寓数据更新
    void changeDepartment(Department department);
    
    /**获取留言板信息*/
    List<Word> findWord();
    List<Reply> findReply();
    
    
}
