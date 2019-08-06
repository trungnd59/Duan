package com.controller;
import java.util.function.Predicate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.entities.Users;
import com.service.MyUserDetailsService;
@Controller
public class BaseController {
	
	@Autowired
	private MyUserDetailsService myUser;

	@RequestMapping(value = { "/login", "/" })
	public String login(@RequestParam(value = "error", required = false) final String error, final Model model) {
		if (error != null) {
			model.addAttribute("message", "Đăng nhập thất bại!");
		}
		return "login";
	}

	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	/*
	 * @param: model.
	 * Check role of current user login .
	 * @return: admin page or user page.
	 */
	@RequestMapping("/user")
	public String user(Model model) {
		
		//get username by spring authentication
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String name = authentication.getName();
		
		//get full info of user by username
		Users u = (Users) myUser.getUserByUsername(name);
		
		//check role of user, return true if role=admin, false if role=user
		boolean hasUserRole = authentication.getAuthorities().stream()
		          .anyMatch(new Predicate<GrantedAuthority>() {
					public boolean test(GrantedAuthority r) {
						return r.getAuthority().equals("ROLE_ADMIN");
					}
				});
		
		//add attribute userId in page admin
		model.addAttribute("userId", u.getId());
		
		//if role = true return page admin, else return page user
		if(hasUserRole == true) {
			return "/admin";
		}
		else {
			return "user";
		}
	}

	@RequestMapping("/logout")
	public String logout(final Model model) {
		model.addAttribute("message", "Đã đăng xuất!");
		return "login";
	}
}
