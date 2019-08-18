package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entities.UsersRoles;
import com.service.MyUserDetailsService;
import com.service.RoleService;
import com.service.UserRoleService;

@Controller
@RequestMapping("/admin")
public class UserRolesController {
	@Autowired
	private UserRoleService userrolesService;

	@Autowired
	private MyUserDetailsService myUser;

	@Autowired
	private RoleService roleService;

	@RequestMapping(value = { "/adminListUserRole" })
	public String listUserRole(Model model) {
		model.addAttribute("listUserRole", userrolesService.findAllUsersRoles());
		return "adminUserRole/listUserRoles";
	}

	@RequestMapping(value = { "/adminUserRole-save" })
	public String preAddRole(Model model) {
		UsersRoles usersRoles = new UsersRoles();
		model.addAttribute("listUser", myUser.findAllUser());
		model.addAttribute("listRole", roleService.findAllRole());
		model.addAttribute("userrole", usersRoles);
		return "adminUserRole/addUserRoles";
	}

	@RequestMapping(value = { "/adminSaveUserRole" })
	public String doSave(@ModelAttribute("userrole") UsersRoles usersRoles, ModelMap model) {
		userrolesService.saveUsersRoles(usersRoles);
		model.addAttribute("listUserRole", userrolesService.findAllUsersRoles());
		return "redirect:/admin/adminListUserRole";
	}

	@RequestMapping("/adminUserRole-update/{id}")
	public String preupdateUserRole(@PathVariable int id, ModelMap model) {
		UsersRoles usersRoles = userrolesService.findByIdUsersRoles(id);
		model.addAttribute("listRole", roleService.findAllRole());
		model.addAttribute("userrole", usersRoles);
		return "adminUserRole/updateUserRoles";
	}

	@RequestMapping("/adminupdateUserRole")
	public String doUpdate(@ModelAttribute("userrole") UsersRoles usersRoles, ModelMap model) {
		userrolesService.updateUsersRoles(usersRoles);
		model.addAttribute("listUserRole", userrolesService.findAllUsersRoles());
		return "redirect:/admin/adminListUserRole";
	}

}
