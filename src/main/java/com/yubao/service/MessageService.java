package com.yubao.service;

import com.util.temp.PageObject;
import com.yubao.model.Message;
import com.yubao.model.Question;
import com.yubao.model.User;


public interface MessageService {
    void notify(User user, Question question);

    PageObject<Message> get(String key, int index, int size) throws Exception;

    void del(String id);

    void delall() throws Exception;

}
