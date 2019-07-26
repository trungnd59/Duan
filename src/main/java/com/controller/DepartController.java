package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.DepartService;

@Controller
@RequestMapping("/admin")
public class DepartController {
	@Autowired
	private DepartService departService;
	
	@RequestMapping(value = { "/adminlistDepart" })
	public String listchude(Model model) {
		model.addAttribute("listDepart", departService.findAllDeparts());
		return "adminDepart/listDepart";
	}
}
