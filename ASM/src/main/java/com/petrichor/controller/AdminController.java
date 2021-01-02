package com.petrichor.controller;

import com.petrichor.pojo.Admin;
import com.petrichor.pojo.Customer;
import com.petrichor.pojo.Department;
import com.petrichor.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("asm")
public class AdminController {
    @Autowired
    AdminService adminService;
    
    String accountID;
    Integer ID;
    String rID;
    
    /**登录*/
    @RequestMapping(value = "adminLogin", method = RequestMethod.GET)
    public String toAdminLogin() {return "adminLogin";}
    
    @RequestMapping(value = "adminHome", method = RequestMethod.POST)
    public String adminLogin(Admin admin, HttpSession session, String account, String password) {
        admin.setAccount(account);
        admin.setPassword(password);
        accountID = account;
        adminService.adminLogin(admin);
        System.out.println("管理员登录");
        session.setAttribute("account", account);
        return "adminHome";
    }
    
    /**页面总布局获取*/
    @RequestMapping(value = "adminHomeHead", method = RequestMethod.GET)
    public String adminHomeHead() {return "adminHomeHead";}
    @RequestMapping(value = "adminHomeLeft", method = RequestMethod.GET)
    public String adminHomeLeft() {return "adminHomeLeft";}
    
    /**获取管理员信息*/
    @RequestMapping(value = "adminMsg", method = RequestMethod.GET)
    public String findAdmin(HttpSession session) {
        List<Admin> adminList = adminService.findAdmin(accountID);
        System.out.println("管理员信息");
        session.setAttribute("admin",adminList);
        return "adminMsg";
    }
    
    /**查找*/
    @RequestMapping(value = "adminToFindCustomer", method = RequestMethod.GET)
    public String adminToFindCustomer() {
        return "adminToFindCustomer";
    }
    
    @RequestMapping(value = "adminFindCustomer", method = RequestMethod.POST)
    public String adminFindCustomer(HttpSession session, Integer id) {
        ID = id;
        List<Customer> customerList = adminService.adminFindCustomer(ID);
        session.setAttribute("customer",customerList);
        return "adminFindCustomer";
    }
    
    /**编辑*/
    @RequestMapping(value = "adminToUpdateCustomerFirst", method = RequestMethod.GET)
    public String adminToUpdateCustomer(HttpSession session) {
        List<Customer> customerList = adminService.adminToUpdateCustomerFirst();
        session.setAttribute("customerList", customerList);
        return "adminToUpdateCustomerFirst";
    }
    @RequestMapping(value = "adminToUpdateCustomerSecond/{id}", method = RequestMethod.GET)
    public String adminToUpdateCustomerSecond(@PathVariable(value = "id") Integer id, HttpSession session, Customer customer) {
        ID = id;
        List<Customer> customerList = adminService.adminFindCustomer(ID);
        session.setAttribute("customer", customerList);
        return "adminToUpdateCustomerSecond";
    }
    
    @RequestMapping(value = "adminToUpdateCustomerSecond/adminUpdateCustomer", method = RequestMethod.POST)
    public String adminUpdateCustomer(Customer customer) {
        adminService.adminUpdateCustomer(customer);
        return "adminToUpdateCustomerFirst";
    }
    
    /**删除顾客*/
    @RequestMapping(value = "toDeleteCustomer", method = RequestMethod.GET)
    public String toDeleteCustomer() {
        return "toDeleteCustomer";
    }
    @RequestMapping(value = "deleteCustomer", method = RequestMethod.POST)
    public String deleteCustomer(Integer id) {
        adminService.deleteCustomer(id);
        return "completeDelete";
    }
    
    /**查找公寓*/
    @RequestMapping(value = "toFindDepartment", method = RequestMethod.GET)
    public String toFindDepartment() {
        return "toFindDepartment";
    }
    
    @RequestMapping(value = "findDepartment", method = RequestMethod.POST)
    public String findDepartment(HttpSession session, String roomId) {
        rID = roomId;
        List<Department> departments = adminService.findDepartment(rID);
        System.out.println(departments);
        session.setAttribute("departments", departments);
        return "findDepartment";
    }
    
    /**编辑*/
    @RequestMapping(value = "toUpdateDepartmentFirst", method = RequestMethod.GET)
    public String toUpdateDepartmentFirst(HttpSession session) {
        List<Department> departments = adminService.toUpdateDepartment();
        session.setAttribute("departments", departments);
        return "toUpdateDepartmentFirst";
    }
    @RequestMapping(value = "toUpdateDepartmentSecond/{roomId}", method = RequestMethod.GET)
    public String adminToUpdateCustomerSecond(@PathVariable(value = "roomId") String roomId, HttpSession session) {
        rID = roomId;
        List<Department> departments = adminService.findDepartment(rID);
        session.setAttribute("department", departments);
        return "toUpdateDepartmentSecond";
    }

    @RequestMapping(value = "toUpdateDepartmentSecond/updateDepartment", method = RequestMethod.POST)
    public String updateDepartment(Department department) {
        adminService.updateDepartment(department);
        return "toUpdateDepartmentFirst";
    }
    
}
