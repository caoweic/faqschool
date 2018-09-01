package test.com.yubao.service.Impl;

import com.yubao.model.User;
import com.yubao.service.UserService;
import org.junit.Test;
import org.junit.Before; 
import org.junit.After;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import javax.annotation.Resource;

/** 
* UserServiceImpl Tester. 
* 
* @author <Authors name>
*/
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
/** 注入相关的配置文件：可以写入多个配置文件 **/
@ContextConfiguration(locations={"classpath:spring-mybatis.xml"
})
public class UserServiceImplTest {
    @Resource
    UserService service;


/** 
* 
* Method: insert(User record) 
* 
*/ 
@Test
public void testInsert() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: check(String account, String pwd) 
* 
*/ 
@Test
public void testCheck() throws Exception {
    service.check("yubaolee","111111");
//TODO: Test goes here... 
} 

/** 
* 
* Method: insertSelective(User record) 
* 
*/ 
@Test
public void testInsertSelective() throws Exception {
    User u = new User();
    u.setAccount("ddd");
    u.setName("ok");
    u.setPwd("ddddd");
    service.insert(u);
//TODO: Test goes here... 
} 

/** 
* 
* Method: selectByExample(UserExample example) 
* 
*/ 
@Test
public void testSelectByExample() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: selectByPrimaryKey(String id) 
* 
*/ 
@Test
public void testSelectByPrimaryKey() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example) 
* 
*/ 
@Test
public void testUpdateByExampleSelective() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: updateByExample(@Param("record") User record, @Param("example") UserExample example) 
* 
*/ 
@Test
public void testUpdateByExample() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: updateByPrimaryKeySelective(User record) 
* 
*/ 
@Test
public void testUpdateByPrimaryKeySelective() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: updateByPrimaryKey(User record) 
* 
*/ 
@Test
public void testUpdateByPrimaryKey() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: Get(String key, int index, int size) 
* 
*/ 
@Test
public void testGet() throws Exception { 
//TODO: Test goes here... 
} 


} 
