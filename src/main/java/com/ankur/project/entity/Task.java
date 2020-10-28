package com.ankur.project.entity;

public class Task {
    public Long userId;
    public String taskName;
    public String dueDate;
    public String timeToCompleteTask;
    public String taskDetails;
    public Long taskId;

    public Task() {

    }

    public Long getTaskId() {
        return taskId;
    }

    public Long getUserId() {
        return userId;
    }

    public String getTaskName() {
        return taskName;
    }

    public String getDueDate() {
        return dueDate;
    }

    public String getTimeToCompleteTask() {
        return timeToCompleteTask;
    }

    public String getTaskDetails() {
        return taskDetails;
    }
}
