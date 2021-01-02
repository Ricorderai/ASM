package com.petrichor.controller;

import com.petrichor.pojo.Customer;
import com.petrichor.pojo.Department;
import com.petrichor.pojo.Reply;
import com.petrichor.pojo.Word;
import com.petrichor.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("asm")
public class CustomerController {
    // 服务层对象
    @Autowired
    CustomerService customerService;
    
    Integer ID;
    String rID;
    
    /**需要登录才能进入留言板*/
    @RequestMapping(value = "haveToLogin")
    public String haveToLogin() {return "haveToLogin";}
    
    // 进入登录界面
    @RequestMapping(value = "toCustomerLogin", method = RequestMethod.GET)
    public String toCustomerLogin() {return "customerLogin";}
    
    // 顾客登录
    @RequestMapping(value = "customerHome", method = RequestMethod.POST)
    public String cusLogin(Customer customer, HttpSession session, Integer id, String password) {
        customer.setId(id);
        customer.setPassword(password);
        ID = id;
        if (customerService.customerLogin(customer)) {
            session.setAttribute("msg", "success");
            session.setAttribute("id", id);
            System.out.println("顾客账户为："+id);
            return "customerHome";
        } else {
            session.setAttribute("msg", "用户不存在，请注册账号！！");
            return "fail";
        }
    }
    
    // 进入注册界面
    @RequestMapping(value = "customerRegister", method = RequestMethod.GET)
    public String toCustomerRegister() {return "customerRegister";}
    
    /**顾客注册*/
    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String customerRegister(Customer customer, HttpSession session) {
        System.out.println(customer.getId());
        try {
            customerService.customerRegister(customer);
            System.out.println(customer.getStartTime());
            session.setAttribute("result", "1");
            return "success";
        } catch (Exception e) {
            session.setAttribute("result", "0");
            System.out.println("无法获得对象！！");
            return "fail";
        }
        
    }
    
    /**进入个人中心*/
    @RequestMapping(value = "customerMsg", method = RequestMethod.GET)
    public String customerMsg(Customer customer, HttpSession session) {
        customer.setId(ID);
        List<Customer> customers = customerService.findCustomer(ID);
        session.setAttribute("customers", customers);
        return "customerMsg";
    }
    
    /**进入编辑界面*/
    @RequestMapping(value = "updateCustomer", method = RequestMethod.GET)
    public String toUpdateCustomer() {return "updateCustomer";}
    
    /*编辑个人信息并提交给数据库*/
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String updateCustomer(Customer customer) {
        customerService.updateCustomer(customer);
        System.out.println("编辑信息成功");
        return "customerHome";
    }
    
    /**进入房屋租赁界面*/
    @RequestMapping(value = "chooseDepartment/{roomID}", method = RequestMethod.GET)
    public String toChooseDepartment(HttpSession session,
                                     @PathVariable(value = "roomID") String roomId) {
        rID = roomId;
        System.out.println("获得了公寓的门牌号！！"+rID);
        List<Department> departments = customerService.chooseDepartment(rID);
        List<Customer> customers = customerService.findCustomer(ID);
        session.setAttribute("departments", departments);
        session.setAttribute("customers", customers);
        return "chooseDepartment";
    }
    
    /**提交租赁订单*/
    @RequestMapping(value = "chooseDepartment/orderDeal", method = RequestMethod.POST)
    public String orderDepartment(Department department, Customer customer) {
        /**优先更新department表中的数据*/
        customerService.changeDepartment(department);
        System.out.println("到了这里？？？");
        customerService.changeCustomer(customer);
        System.out.println("没有到这里？？？？");
        return "customerHome";
    }
    
    /**获得留言板*/
    @RequestMapping(value = "wordAndReply")
    public String wordAndReply() {return "wordAndReply";}
    @RequestMapping(value = "word")
    public String word() {return "word";}
    @RequestMapping(value = "reply")
    public String reply() {return "reply";}
    @RequestMapping(value = "mainWordAndReply")
    public String mainWordAndReply(HttpSession session) {
        List<Reply> replyList = customerService.findReply();
        List<Word> wordList = customerService.findWord();
        session.setAttribute("reply", replyList);
        session.setAttribute("word", wordList);
        return "mainWordAndReply";
    }
    
    
    
    
}
