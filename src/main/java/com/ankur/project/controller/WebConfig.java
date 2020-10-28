package com.ankur.project.controller;

import com.ankur.project.global.SysProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


@Configuration
@EnableWebMvc
public class WebConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**")
                .addResourceLocations("file:" + SysProperties.getBaseDir() + "/static/");
        registry.addResourceHandler("/images/**")
                .addResourceLocations("file:" + SysProperties.getBaseDir() + "/images/");
    }
}