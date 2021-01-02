package com.petrichor.mapper;

import com.petrichor.pojo.Admin;
import com.petrichor.pojo.Customer;
import com.petrichor.pojo.Department;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface AdminMapper {
    /**管理员登录*/
    @Select("select * from admin where account=#{account} and password=#{password}")
    Admin adminLogin(Admin admin);
    
    /**查看个人信息*/
    @Select("select * from admin where account=#{account}")
    List<Admin> findAdmin(String account);
    
    /**查找顾客信息*/
    @Select("select * from customer where id=#{id}")
    List<Customer> adminFindCustomer(Integer id);
    
    /**编辑*/
    @Select("select * from customer")
    List<Customer> adminToUpdateCustomerFirst();
    @Update("update customer set id=#{id}, password=#{password}, name=#{name}, id_number=#{idNumber}," +
            "sex=#{sex}, company=#{company}, start_time=#{startTime}, end_time=#{endTime}, room_id=#{roomId}," +
            "pay_status=#{payStatus} where id=#{id}")
    void adminUpdateCustomer(Customer customer);
    
    /**删除*/
    @Delete("delete from customer where id=#{id}")
    void deleteCustomer(Integer id);
    
    /**查找公寓*/
    @Select("select * from department where room_id = #{roomId}")
    List<Department> findDepartment(String roomId);
    
    /**编辑公寓*/
    @Select("select * from department")
    List<Department> toUpdateDepartment();
    @Update("update department set room_id=#{roomId}, price=#{price}, status=#{status}," +
            "person=#{person}, customer_id = #{id} where room_id=#{roomId}")
    void updateDepartment(Department department);


}
