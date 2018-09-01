package com.yubao.service.Impl;

import com.util.Const;
import com.yubao.model.User;
import com.yubao.service.LoginService;
import com.yubao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;


@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    HttpServletRequest request;

    @Resource
    UserService service;

    public User get() {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {

                if (cookie.getName().equals(Const.COOKIE_LOGIN_USER)) {
                    String id = cookie.getValue();
                    if(id != null && !id.equals("")){
                        User user = service.selectByPrimaryKey(id);
                        return user;
                    }
                }
            }
        }
        return null;
    }
}
