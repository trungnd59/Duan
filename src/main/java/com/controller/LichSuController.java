package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entities.LichSuLamViec;
import com.entities.Users;
import com.service.LichSuService;
import com.service.MyUserDetailsService;

@Controller
public class LichSuController {
	@Autowired
	private LichSuService lichSuService;
	@Autowired
	private MyUserDetailsService myUser;
	
	
	
	
	/*
	 * Get profile by userId
	 */
	@RequestMapping(value = { "/user/profile/{userId}" })
	public String profileuser(Model model, @PathVariable("userId") String userId,
			@ModelAttribute("profile") Users users) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String name = authentication.getName();
		Users u = (Users) myUser.getUserByUsername(name);
		model.addAttribute("thongtin", myUser.findUserById(u.getId()));
		return "userThongtin/profile";
	}
	
	/*
	 * Get list lịch sử
	 */
	@RequestMapping(value = { "/admin/listLichSu/{userId}" })
	public String listLichSu(Model model, @PathVariable("userId") int userId,
			@ModelAttribute("lichsulamviec") LichSuLamViec lichSuLamViec) {
		model.addAttribute("listLichSu", lichSuService.findAllLichSu(userId));
		for (LichSuLamViec ls : lichSuService.findAllLichSu(userId)) {
		}
		return "adminLichsulamviec/listLichSu";
	}

	/*
	 * Get list lịch sử by userId
	 */
	@RequestMapping(value = { "/user/listLichSu/{userId}" })
	public String listLichSuUser(Model model, @PathVariable("userId") String userId,
			@ModelAttribute("lichsulamviec") LichSuLamViec lichSuLamViec) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String name = authentication.getName();
		Users u = (Users) myUser.getUserByUsername(name);
		model.addAttribute("listLichSu", lichSuService.findAllLichSu(u.getId()));
		return "userLichsulamviec/listLichSu";
	}
	

	@RequestMapping("/user/themcongviec/{userId}")
	public String saveLichSu(@ModelAttribute("lichsulamviec") LichSuLamViec lichSuLamViec, ModelMap model,
			@PathVariable("userId") int userId) {

		model.addAttribute("userId", userId);
		return "userLichsulamviec/themCongViec";
	}

	/*
	 * POST list công việc
	 */
	@PostMapping("/user/themcongviec/{username}")
	public String saveLichSus(@ModelAttribute("lichsulamviec") LichSuLamViec lichSuLamViec, ModelMap model,
			@PathVariable("username") String username) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String name = authentication.getName();
		Users u = (Users) myUser.getUserByUsername(name);
		lichSuLamViec.setUserlichsu(u);
		lichSuService.saveLichSu(lichSuLamViec);
		return "redirect: /Duan/user/listLichSu/" + username;
	}

	@RequestMapping("/user/presuacongviec/{id}")
	public String suaLichSu(ModelMap model, @PathVariable("id") int id) {
		LichSuLamViec lichsu = lichSuService.findByIdLichSuLamViec(id);
		model.addAttribute("lichsulamviec", lichsu);
		return "userLichsulamviec/suaCongViec";
	}

	/*
	 * POST sửa công việc
	 */
	@RequestMapping(value = "/user/suacongviec")
	public String suaCongViec(@ModelAttribute("Lichsulamviec") LichSuLamViec lichSuLamViec, ModelMap model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String name = authentication.getName();
		Users u = (Users) myUser.getUserByUsername(name);
		lichSuLamViec.setUserlichsu(u);
		lichSuService.updateLichSu(lichSuLamViec);
		return "redirect: /Duan/user/listLichSu/" + name;
	}

	/*
	 * delete công việc
	 */
	@RequestMapping("/user/listLichSu/lichsudelete/{id}")
	public String deleteLichSu(@PathVariable int id, ModelMap model, HttpServletRequest request) {
		if (lichSuService.deleteLichSu(id)) {
			model.addAttribute("deleteMessage", 1);
		} else {
			model.addAttribute("deleteMessage", 0);
		}
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String name = authentication.getName();

		return "redirect: /Duan/user/listLichSu/" + name;
	}
}
