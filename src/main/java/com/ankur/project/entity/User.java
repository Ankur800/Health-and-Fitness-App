package com.ankur.project.entity;

public class User extends UserBase {

    public String name;
    public String email;
    public String password;
    public String gender;
    public String token;
    public String height;
    public Long weight;
    public Long age;
    public String current_fitness;
    public String fitness_goals;
    public String user_comment;
    public Long total_task_completed;

    public Long getTotal_task_completed() {
        return total_task_completed;
    }

    public String getUser_comment() {
        return user_comment;
    }

    public String getGender() {
        return gender;
    }

    public String getHeight() {
        return height;
    }

    public Long getWeight() {
        return weight;
    }

    public Long getAge() {
        return age;
    }

    public String getCurrent_fitness() {
        return current_fitness;
    }

    public String getFitness_goals() {
        return fitness_goals;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public Long getId() {
        return id;
    }

    public String getToken() {
        return token;
    }

    public User(){

    }

    public User(String name, String email, String password, Long id, String token) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.id = id;
        this.token = token;
    }

}
