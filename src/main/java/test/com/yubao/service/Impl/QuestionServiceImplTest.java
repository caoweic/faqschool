package test.com.yubao.service.Impl;

import com.util.Const;
import com.util.temp.PageObject;
import com.util.temp.QuestionViewModel;
import com.yubao.model.Question;
import com.yubao.model.User;
import com.yubao.service.LoginService;
import com.yubao.service.QuestionService;
import com.yubao.service.UserService;
import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import org.junit.runner.RunWith;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.mock.web.MockServletContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.web.context.request.RequestContextListener;

import javax.annotation.Resource;
import javax.servlet.ServletRequestEvent;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * QuestionServiceImpl Tester.
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
/** 注入相关的配置文件：可以写入多个配置文件 **/
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class QuestionServiceImplTest{
    @Resource
    QuestionService service;

    @Resource
    UserService userService;

    MockServletContext context;
    MockHttpServletRequest request;
    MockHttpServletResponse response;

    @Before
    public void before() throws Exception {
        RequestContextListener listener = new RequestContextListener();
        context = new MockServletContext();
        request = new MockHttpServletRequest(context);
        response = new MockHttpServletResponse();
        listener.requestInitialized(new ServletRequestEvent(context, request));

        User u = userService.check("yubaolee", "111111");
        Cookie cookie = new Cookie(Const.COOKIE_LOGIN_USER, u.getId());
        cookie.setPath("/");
        cookie.setMaxAge(360000);
        response.addCookie(cookie);
        request.setCookies(cookie);
    }

    @After
    public void after() throws Exception {
    }

    /**
     * Method: Get(String key, int index, int size)
     */
    @Test
    public void testGet() throws Exception {
        service.getByUserAnswer("d8c8a352-452f-45ea-b699-4dc566885694", 0, 10);
//TODO: Test goes here...
    }

    /**
     * Method: add(Question question)
     */
    @Test
    public void testAdd() throws Exception {
        Question question = new Question();

        question.setTitle("新");
        question.setContent("dddddddd");
        question.setUserid("admin");
        service.add(question);
    }

    /**
     * Method: delAnswer(String id)
     */
    @Test
    public void testDelAnswer() throws Exception {
//TODO: Test goes here...
    }

    /**
     * Method: accept(String id)
     */
    @Test
    public void testAccept() throws Exception {
//TODO: Test goes here...
    }

    /**
     * Method: getbyuser(String uid, int index, int size)
     */
    @Test
    public void testGetbyuser() throws Exception {
//TODO: Test goes here...
    }

    /**
     * Method: getByUserAnswer(String uid, int index, int size)
     */
    @Test
    public void testGetByUserAnswer() throws Exception {
//TODO: Test goes here...
    }

    /**
     * Method: getHot(String key, int index, int size)
     */
    @Test
    public void testGetHot() throws Exception {
//TODO: Test goes here...
    }

    /**
     * Method: addAnswer(String jid, String content)
     */
    @Test
    public void testAddAnswer() throws Exception {

        service.addAnswer("7d6f6f41-7144-417d-b5ec-bd3f6f4b9993", "ok");
    }

    /**
     * Method: Get(String id)
     */
    @Test
    public void testGetId() throws Exception {
//TODO: Test goes here...
    }


    /**
     * Method: checkLogin()
     */
    @Test
    public void testCheckLogin() throws Exception {
//TODO: Test goes here...
/*
try {
   Method method = QuestionServiceImpl.getClass().getMethod("checkLogin");
   method.setAccessible(true);
   method.invoke(<Object>, <Parameters>);
} catch(NoSuchMethodException e) {
} catch(IllegalAccessException e) {
} catch(InvocationTargetException e) {
}
*/
    }

    /**
     * Method: addHitCnt(String id)
     */
    @Test
    public void testAddHitCnt() throws Exception {
//TODO: Test goes here...
/*
try {
   Method method = QuestionServiceImpl.getClass().getMethod("addHitCnt", String.class);
   method.setAccessible(true);
   method.invoke(<Object>, <Parameters>);
} catch(NoSuchMethodException e) {
} catch(IllegalAccessException e) {
} catch(InvocationTargetException e) {
}
*/
    }

} 
