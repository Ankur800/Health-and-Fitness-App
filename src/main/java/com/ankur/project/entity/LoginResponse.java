package com.ankur.project.entity;

public class LoginResponse {

    public LoginResponse(){

    }

    public String email;
    public Boolean is_logined;
    public String message;

    public LoginResponse(String email, Boolean is_logined, String message) {
        this.email = email;
        this.is_logined = is_logined;
        this.message = message;
    }

}

