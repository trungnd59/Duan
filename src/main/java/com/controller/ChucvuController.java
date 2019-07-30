package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entities.Chucvu;
import com.service.ChucvuService;

@Controller
@RequestMapping("/admin")
public class ChucvuController {
	@Autowired
	private ChucvuService chucvuService;

	@RequestMapping(value = { "/adminlistChucvu" })
	public String listChucvu(Model model) {
		model.addAttribute("listChucvu", chucvuService.findAllChucvu());
		return "adminChucvu/listChucvu";
	}

	@RequestMapping("/adminChucvu-save")
	public String insertChucvu(ModelMap model) {
		Chucvu chucvu = new Chucvu();
		model.addAttribute("chucvu", chucvu);
		return "adminChucvu/chucvu-save";
	}

	@RequestMapping("/adminsaveChucvu")
	public String saveChucvu(@ModelAttribute("chucvu") Chucvu chucvu, ModelMap model) {
		chucvuService.saveChucvu(chucvu);
		model.addAttribute("listChucvu", chucvuService.findAllChucvu());
		return "redirect:/admin/adminlistChucvu";
	}

	@RequestMapping("/adminChucvu-update/{id}")
	public String updateChucvu(@PathVariable int id, ModelMap model) {
		Chucvu chucvu = chucvuService.findByIdChucvu(id);
		model.addAttribute("chucvu", chucvu);
		return "adminChucvu/chucvu-update";
	}

	@RequestMapping("/adminupdateChucvu")
	public String doUpdate(@ModelAttribute("Chucvu") Chucvu chucvu, ModelMap model) {
		chucvuService.updateChucvu(chucvu);
		model.addAttribute("listChucvu", chucvuService.findAllChucvu());
		return "redirect:/admin/adminlistChucvu";
	}

	@RequestMapping("/chucvuDelete/{id}")
	public String deleteChucvu(@PathVariable int id, ModelMap model) {
		chucvuService.deleteChucvu(id);
		model.addAttribute("listChucvu", chucvuService.findAllChucvu());
		return "redirect:/admin/adminlistChucvu";
	}

}
