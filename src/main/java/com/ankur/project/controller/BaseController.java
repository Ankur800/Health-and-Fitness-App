package com.ankur.project.controller;


import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;


public class BaseController {
    @ExceptionHandler

    public String defaultErrorHandler(HttpServletRequest req, Exception e) throws Exception {
        System.out.println(e.getMessage());
        return "alien";
    }
}
