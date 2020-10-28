package com.ankur.project.entity;

public class TaskResponse {
    public Boolean is_success;
    public String message;

    public TaskResponse(Boolean is_success, String message) {
        this.is_success = is_success;
        this.message = message;
    }

    public TaskResponse() {

    }
}
