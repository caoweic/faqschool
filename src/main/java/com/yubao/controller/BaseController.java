package com.yubao.controller;

import com.google.gson.Gson;
import com.util.Response;


public class BaseController {
    protected  Gson gson = new Gson();
    protected Response response = new Response();
}
