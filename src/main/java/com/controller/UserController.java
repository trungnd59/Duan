package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entities.Users;
import com.service.ChucvuService;
import com.service.DepartService;
import com.service.MyUserDetailsService;

@Controller
@RequestMapping("/admin")
public class UserController {
	@Autowired
	private MyUserDetailsService userService;
	@Autowired
	private DepartService departService;
	@Autowired
	private ChucvuService chucvuService;

	@RequestMapping(value = { "/adminlistUser" })
	public String getListUser(Model model) {
		model.addAttribute("listUser", userService.findAllUser());
		return "adminUser/listUser";
	}

	@RequestMapping("/adminuser-save")
	public String insertUser(ModelMap model) {
		Users user = new Users();
		model.addAttribute("user", user);
		model.addAttribute("listDepart", departService.findAllDeparts());
		model.addAttribute("chucvuList", chucvuService.findAllChucvu());
		return "adminUser/user-save";
	}

	@RequestMapping("/adminsaveUser")
	public String saveUser(@ModelAttribute("user") Users user, ModelMap model) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(10)));
		userService.saveUser(user);
		model.addAttribute("listUser", userService.findAllUser());
		return "redirect:/admin/adminlistUser";
	}

	@RequestMapping("/adminuser-update/{id}")
	public String updateUser(@PathVariable int id, ModelMap model) {
		Users user = userService.findUserById(id);
		model.addAttribute("user", user);
		model.addAttribute("listDepart", departService.findAllDeparts());
		model.addAttribute("chucvuList", chucvuService.findAllChucvu());
		return "adminUser/user-update";
	}

	@RequestMapping("/adminupdateUser")
	public String doUpdate(@ModelAttribute("Users") Users user, ModelMap model) {
		userService.updateUser(user);
		model.addAttribute("listUser", userService.findAllUser());
		return "redirect:/admin/adminlistUser";
	}

	@RequestMapping("/userDelete/{id}")
	public String deleteUser(@PathVariable int id, ModelMap model) {
		userService.deleteUserRole(id);
		userService.deleteUser(id);
		model.addAttribute("listUser", userService.findAllUser());
		return "redirect:/admin/adminlistUser";
	}

}
