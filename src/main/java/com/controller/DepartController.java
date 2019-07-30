package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entities.Departs;
import com.service.DepartService;

@Controller
@RequestMapping("/admin")
public class DepartController {
	@Autowired
	private DepartService departService;

	@RequestMapping(value = { "/adminlistDepart" })
	public String listdepart(Model model) {
		model.addAttribute("listDepart", departService.findAllDeparts());
		return "adminDepart/listDepart";
	}

	@RequestMapping("/adminDepart-save")
	public String insertDepart(ModelMap model) {
		Departs departs = new Departs();
		model.addAttribute("depart", departs);
		return "adminDepart/depart-save";
	}

	@RequestMapping("/adminsaveDepart")
	public String saveDepart(@ModelAttribute("depart") Departs depart, ModelMap model) {
		departService.saveDeparts(depart);
		model.addAttribute("listDepart", departService.findAllDeparts());
		return "redirect:/admin/adminlistDepart";
	}

	@RequestMapping("/adminDepart-update/{id}")
	public String updateDepart(@PathVariable int id, ModelMap model) {
		Departs departs = departService.findByIdDeparts(id);
		model.addAttribute("depart", departs);
		return "adminDepart/depart-update";
	}

	@RequestMapping("/adminupdateDepart")
	public String doUpdate(@ModelAttribute("Departs") Departs depart, ModelMap model) {
		departService.updateDeparts(depart);
		model.addAttribute("listDepart", departService.findAllDeparts());
		return "redirect:/admin/adminlistDepart";
	}

	@RequestMapping("/departDelete/{id}")
	public String deleteDepart(@PathVariable int id, ModelMap model) {
		departService.deleteDeparts(id);
		model.addAttribute("listDepart", departService.findAllDeparts());
		return "redirect:/admin/adminlistDepart";
	}

}
