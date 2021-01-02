package com.petrichor.mapper;

import com.petrichor.pojo.Customer;
import com.petrichor.pojo.Department;
import com.petrichor.pojo.Reply;
import com.petrichor.pojo.Word;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface CustomerMapper {
    
    /*登录*/
    @Select("select * from customer where id = #{id} and password = #{password}")
    Customer customerLogin(Customer customer);
    
    /*注册*/
    @Insert("insert into customer(id, password, name, sex, id_number, company," +
            " room_id, start_time, end_time, pay_status)" +
            " values(#{id}, #{password}, #{name}," +
            "#{sex}, #{idNumber}, #{company}," +
            " '还未选择', curdate(), curdate(), '还未选择')")
    void customerRegister(Customer customer);
    
    /*进入个人信息界面*/
    @Select("select * from customer where id = #{id}")
    List<Customer> findCustomer(Integer id);
    
    /*编辑只能编辑的信息*/
    @Update("update customer set id=#{id}, password=#{password}, name=#{name}," +
            "sex=#{sex}, id_number=#{idNumber}, company=#{company} where id=#{id}")
    void updateCustomer(Customer customer);
    
    /**根据roomId查询到该公寓的基本信息*/
    @Select("select * from department where room_id = #{roomId}")
    List<Department> chooseDepartment(String roomId);
    
    /**提交订单之后 顾客表的四个属性进行更新：room_id,start_time,end_time,pay_status
     * 公寓表对customer_id进行更新*/
    @Update("update customer set start_time=#{startTime}, end_time=#{endTime}, pay_status='已支付', " +
            "room_id=#{roomId} where id=#{id}")
    void changeCustomer(Customer customer);
    @Update("update department set customer_id=#{id}, status='已租' where room_id = #{roomId}")
    void changeDepartment(Department department);
    
    /**查询留言板信息*/
    @Select("select * from word")
    List<Word> findWord();
    @Select("select * from reply")
    List<Reply> findReply();
    
}
