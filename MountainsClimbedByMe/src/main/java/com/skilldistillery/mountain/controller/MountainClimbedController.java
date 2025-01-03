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
	
	@RequestMapping(path = "addMt.do", method = RequestMethod.GET)
	public String createMountain(Model model, MountainClimbed newMountain) {
		model.addAttribute("newMountain", new MountainClimbed());
		return "addMt";
	}
	
	@RequestMapping(path = "addMt.do", method = RequestMethod.POST)
	public String addMountain(Model model, MountainClimbed newMountain) {
		MountainClimbed newOne = mtDao.create(newMountain);
		model.addAttribute("newMountain", newOne);
		return "newMt";
	}
	
	@RequestMapping(path = "updateMt.do", method = RequestMethod.GET)
	public String updateMountain(Model model, @RequestParam("showId") Integer showId) {
		MountainClimbed updatedMountain = mtDao.findById(showId);
		model.addAttribute("updatingMountain", updatedMountain);
		return "updateMt";
	}
	
	@RequestMapping(path = "updateMt.do", method = RequestMethod.POST)
	public String updateMountain2(Model model, MountainClimbed updatedMountain) {
		mtDao.update(updatedMountain.getId(), updatedMountain);
		model.addAttribute("mountainClimbed", updatedMountain);
		return "showMt";
	}
	
//	@RequestMapping(path = "deleteMt.do", method = RequestMethod.GET)
//	public String goDeleteMountain(Model model, @RequestParam("showId") Integer showId) {
//		MountainClimbed goneMountain = mtDao.findById(showId);
//		model.addAttribute("deletingMountain", );
//		return null;
//	}
	
	@RequestMapping(path = "deleteMt.do", method = RequestMethod.POST)
	public String goDeleteMountain(Model model, @RequestParam("showId") Integer showId) {
		boolean mountainGone = mtDao.deleteById(showId);
		if (mountainGone) {
			return "home";
		} else {
			return "error";
		}
	}
}
