package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Testing {

	@RequestMapping(value = "/Main", method = { RequestMethod.GET, RequestMethod.POST })
	public String Main() {
		System.out.println("[TestingController.Main()]");
		
		return "Main/Main";

	}

}