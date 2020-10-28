package com.ankur.project.fetcher;

import com.ankur.project.entity.Location;
import com.ankur.project.global.HttpURLConnectionExample;
import com.google.gson.Gson;

public class LocationFetcher {

    public static Location fetchLocation() throws Exception {
        Location location = new Location();
        String link = "https://geolocation-db.com/jsonp/";
        String response = HttpURLConnectionExample.sendGet(link);
        String myJsonString = response.substring(9, response.length()-1);
        Gson gson = new Gson();
        location = gson.fromJson(myJsonString, Location.class);

        return location;
    }
}
