package com.util.temp;

import com.yubao.model.Question;

import java.util.List;


public class QuestionViewModel extends Question {
    public UserViewModel user;   //发布者
    public List<AnswerViewModel> answers;  //回答
}
