package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entities.Thanhtich;
import com.service.MyUserDetailsService;
import com.service.ThanhtichService;

@Controller
@RequestMapping("/admin")
public class ThanhtichController {
	@Autowired
	ThanhtichService thanhtichService;
	@Autowired
	MyUserDetailsService userService;

	@RequestMapping(value = { "/adminlistRecord" })
	public String listThanhtich(Model model) {
		model.addAttribute("listThanhtich", thanhtichService.findAllThanhtich());
		return "adminThanhtich/listThanhtich";
	}

	@RequestMapping("/adminreport")
	public String sumRecord(Model model) {
		List<Object> list= thanhtichService.sumRecord();
		model.addAttribute("arrays", list);
		return "adminThanhtich/listtongThanhtich";
	}
	
	@RequestMapping("/adminTongluong")
	public String tongLuong(Model model) {
		List<Object> list=  thanhtichService.tongLuong();
		model.addAttribute("tongluong", list);
		return "adminTongluong/tongluong";
	}


	@RequestMapping("/adminThanhtich-save")
	public String preInsert(ModelMap model) {
		Thanhtich thanhtich = new Thanhtich();
		model.addAttribute("listNhanvien", userService.findAllUser());
		model.addAttribute("thanhtich", thanhtich);
		return "adminThanhtich/thanhtich-save";
	}

	@RequestMapping("/adminsaveThanhtich")
	public String doSave(@ModelAttribute("thanhtich") Thanhtich thanhtich, ModelMap model) {
		String pattern = "dd-MM-yyyy";
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		String date = sdf.format(new Date());
		thanhtich.setNgayghinhan(date);
		thanhtichService.addThanhtich(thanhtich);
		model.addAttribute("listThanhtich", thanhtichService.findAllThanhtich());
		return "redirect:/admin/adminlistRecord";
	}

}
