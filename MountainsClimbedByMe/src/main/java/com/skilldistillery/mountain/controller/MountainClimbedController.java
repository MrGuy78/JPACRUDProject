package com.skilldistillery.mountain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.skilldistillery.mountain.data.MountainDAO;

@Controller
public class MountainClimbedController {
	
	@Autowired
	private MountainDAO mtDao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("showList", mtDao.findAll());
		return "home";
	}
	
	

}
