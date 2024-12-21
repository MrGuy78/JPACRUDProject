package com.skilldistillery.mountain.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.mountain.data.MountainDAO;
import com.skilldistillery.mountain.entities.MountainClimbed;

@Controller
public class MountainClimbedController {
	
	@Autowired
	private MountainDAO mtDao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("showList", mtDao.findAll());
		return "home";
	}
	@RequestMapping(path = "getMountain.do", method = RequestMethod.GET)
	public String mountain(Model model, @RequestParam("showId") Integer showId) {
		MountainClimbed mountainClimbed = mtDao.findById(showId);
		model.addAttribute("mountainClimbed", mountainClimbed);
		
		return "showMt";
	}
	
	

}
