package com.ankur.project.controller;

import com.ankur.project.database.GenericDB;
import com.ankur.project.entity.*;
import com.ankur.project.fetcher.LocationFetcher;
import org.jooq.Condition;
import org.jooq.Field;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Logger;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    private static Logger logger = Logger.getLogger(String.valueOf(UserController.class));

    @RequestMapping(method = RequestMethod.GET, value = "/welcome")
    public String welcome(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) throws Exception {
        User user = ControllerUtils.getCurrentMember(request);

        //access only when he is logged in!
        modelMap.addAttribute("USER", user);

        // BMI calculation
        BMI bmi = new BMI();
        bmi.weight = Double.valueOf(user.weight);
        bmi.height = Double.valueOf(user.height) / 100.0;
        bmi.calcBMI();
        bmi.calculateBMIResult();

        modelMap.addAttribute("BMI", bmi);

        Awards awards = new Awards();
        if(user.total_task_completed == null) {
            awards.score = Long.valueOf(0);
        } else {
            awards.score = user.total_task_completed;
        }
        awards.calculateTier();
        String userTier = awards.tier;

        modelMap.addAttribute("TIER", userTier);

        return "welcome";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/calories-intake")
    public String caloriesIntake(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) throws Exception {
        User user = ControllerUtils.getCurrentMember(request);

        //access only when he is logged in!
        modelMap.addAttribute("USER", user);


        return "calories-intake";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/set-task")
    public String setTask(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) throws Exception {
        User user = ControllerUtils.getCurrentMember(request);

        //access only when he is logged in!
        modelMap.addAttribute("USER", user);


        return "set-task";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/set-task")
    public
    @ResponseBody
    String setTask(@RequestBody Task task, HttpServletRequest request, HttpServletResponse response) {

        task.userId = ControllerUtils.getUserId(request);

        new GenericDB<Task>().addRow(com.ankur.project.tables.Task.TASK, task);

        return "Task Added Successfully!";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/pomodoro")
    public String pomodoro(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        User user = ControllerUtils.getCurrentMember(request);

        modelMap.addAttribute("USER", user);

        return  "pomodoro";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/task-list")
    public String taskList(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        User user = ControllerUtils.getCurrentMember(request);

        modelMap.addAttribute("USER", user);

        Condition condition = com.ankur.project.tables.Task.TASK.USERID.eq(user.id);

        List<Task> tasks = (List<Task>) GenericDB.getRows(com.ankur.project.tables.Task.TASK, Task.class, condition, null);

        modelMap.addAttribute("TASKS", tasks);

        return  "task-list";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/task-list")
    public
    @ResponseBody
    TaskResponse taskList(@RequestBody Long taskId, HttpServletRequest request, HttpServletResponse response) {

        Boolean task_deleted = false;

        Condition condition = com.ankur.project.tables.Task.TASK.TASKID.eq(taskId);

        task_deleted = GenericDB.deleteRow(com.ankur.project.tables.Task.TASK, condition);

        String message = "Tasks has been updated successfully!";

        // Accessing the task and updating it

        User user = ControllerUtils.getCurrentMember(request);
        Condition conditionForGettingTasks = com.ankur.project.tables.User.USER.ID.eq(user.id);
        if(user.total_task_completed == null) {
            user.total_task_completed = Long.valueOf(1);
        } else {
            user.total_task_completed = user.total_task_completed + 1;
        }
        new GenericDB<Long>().updateColumn(com.ankur.project.tables.User.USER.TOTAL_TASK_COMPLETED, user.total_task_completed, com.ankur.project.tables.User.USER, conditionForGettingTasks);


        return (new TaskResponse(task_deleted, message));
    }

    @RequestMapping(method = RequestMethod.GET, value = "/my-location")
    public String myLocation(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) throws Exception {
        User user = ControllerUtils.getCurrentMember(request);

        modelMap.addAttribute("USER", user);

        // adding location to model map
        LocationFetcher locationFetcher = new LocationFetcher();
        Location location = locationFetcher.fetchLocation();

        modelMap.addAttribute("LOCATION", location);

        GoogleLocation googleLocation = new GoogleLocation();
        googleLocation.linkForLocation =  "https://maps.google.com/maps?width=1520&amp;height=780&amp;hl=en&amp;q=%20"+ location.city +"+()&amp;t=&amp;z=12&amp;ie=UTF8&amp;iwloc=B&amp;output=embed";
        modelMap.addAttribute("GOOGLELOCATION", googleLocation);

        return  "my-location";
    }

}