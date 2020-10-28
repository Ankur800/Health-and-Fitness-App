package com.ankur.project.entity;

import java.util.*;

public class CurrentDay {

    public String day;
    public Integer date;
    public Integer month;
    public String year;

    public String getDay() {
        return day;
    }

    public Integer getDate() {
        return date;
    }

    public Integer getMonth() {
        return month;
    }

    public String getYear() {
        return year;
    }

    public static CurrentDay getCurrentDayInfo() {
        CurrentDay currentDay = new CurrentDay();

        Map<String, String> dayMap = new HashMap<String, String>();
        dayMap.put("Mon", "Monday");
        dayMap.put("Tue", "Tuesday");
        dayMap.put("Wed", "Wednesday");
        dayMap.put("Thu", "Thursday");
        dayMap.put("Fri", "Friday");
        dayMap.put("Sat", "Saturday");
        dayMap.put("Sun", "Sunday");

        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        Date date = calendar.getTime();
        int day = calendar.get(Calendar.DATE);
        int month = calendar.get(Calendar.MONTH) + 1;
        String temp  = date.toString();
        String[] forDay = temp.split(" ");

        currentDay.day = dayMap.get(forDay[0]);
        currentDay.date = day;
        currentDay.month = month;
        currentDay.year = forDay[forDay.length-1];

        return currentDay;
    }
}
