package com.ankur.project.controller;

import com.ankur.project.database.GenericDB;
import com.ankur.project.entity.LoginResponse;
import com.ankur.project.entity.User;
import org.apache.log4j.Logger;
import org.jooq.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


@Controller
@RequestMapping("/login")
public class LoginController extends BaseController {

    private static Logger logger = Logger.getLogger(MainController.class);


    @RequestMapping(method = RequestMethod.GET, value = "/welcome")
    public String welcome(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "welcomelogin";
    }


    @RequestMapping(method = RequestMethod.POST, value = "/welcome")
    public
    @ResponseBody
    LoginResponse handleLogin(@RequestBody User user, HttpServletRequest request, HttpServletResponse response){

        Condition condition = com.ankur.project.tables.User.USER.EMAIL.eq(user.email).and(com.ankur.project.tables.User.USER.PASSWORD.eq(user.password));

        List<User> x = (List<User>) GenericDB.getRows(com.ankur.project.tables.User.USER, User.class, condition, 1);

        if(x != null && x.size() > 0){
            //condition met and user has entered right password and email

            User tempUser = x.get(0);

            ControllerUtils.setUserSession(request, tempUser);
            return new LoginResponse(tempUser.email, true, "Login Successful!");
        } else {
            //Wrong combination
            return new LoginResponse(null, false, "Wrong Combination!");
        }
    }

}