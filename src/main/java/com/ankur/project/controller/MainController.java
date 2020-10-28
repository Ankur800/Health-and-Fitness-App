package com.ankur.project.controller;

import com.ankur.project.database.GenericDB;
import com.ankur.project.entity.SignupResponse;
import com.ankur.project.entity.User;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
@RequestMapping("/")
public class MainController extends BaseController {

    private static Logger logger = Logger.getLogger(MainController.class);

    @RequestMapping(method = RequestMethod.GET, value = "/signup")
    public String signup(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "signup";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/intro")
    public String intro(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "intro";
    }


    @RequestMapping(method = RequestMethod.POST, value = "/signup")
    public
    @ResponseBody
    SignupResponse signUpData(@RequestBody User user, HttpServletRequest request, HttpServletResponse response) {

        Boolean user_created = false;
        String message = "";

        if(GenericDB.getCount(com.ankur.project.tables.User.USER, com.ankur.project.tables.User.USER.EMAIL.eq(user.email)) > 0){
            message += "User already exists for this email !";
        } else {
            new GenericDB<User>().addRow(com.ankur.project.tables.User.USER, user);
            user_created = true;
            message += "User Created !";
        }

        return (new SignupResponse(message, user_created));
    }
}