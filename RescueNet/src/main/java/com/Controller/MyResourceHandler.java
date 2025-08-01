package com.Controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@EnableWebMvc
public class MyResourceHandler extends WebMvcConfigurerAdapter
{
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry)
	{
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
}

//Copy this program inside your controller package
//Create "resources" folder inside webapp folder.
//copy paste all template css and folders inside that.
//keep your jsp pages inside views folder only.
//change paths of css inside your jsp pages.
//example -->  <link href="./resources/css/style.css" rel="stylesheet" type="text/css" />
