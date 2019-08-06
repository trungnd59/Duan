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
	 * Get list lịch sử
	 */
	@RequestMapping(value = { "/admin/listLichSu/{userId}" })
	public String listLichSu(Model model, @PathVariable("userId") int userId,@ModelAttribute("lichsulamviec") LichSuLamViec lichSuLamViec) {
		model.addAttribute("listLichSu", lichSuService.findAllLichSu(userId));
		for (LichSuLamViec ls : lichSuService.findAllLichSu(userId)) {
			System.out.println(ls.getDiadiem());
		}
		return "adminLichsulamviec/listLichSu";
	}

	/*
	 * Get list lịch sử by userId
	 */
	@RequestMapping(value = { "/user/listLichSu/{userId}" })
	public String listLichSuUser(Model model, @PathVariable("userId") String userId,@ModelAttribute("lichsulamviec") LichSuLamViec lichSuLamViec) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String name = authentication.getName();
		Users u = (Users) myUser.getUserByUsername(name);
		model.addAttribute("listLichSu", lichSuService.findAllLichSu(u.getId()));
		return "userLichsulamviec/listLichSu";
	}

	/*
	 * Lưu list lịch sử
	 */
//	@RequestMapping("/adminLichSu-save")
//	public String insertLichSu(ModelMap model) {
//		LichSuLamViec lichSuLamViec = new LichSuLamViec();
//		model.addAttribute("lichSuLamViec", lichSuLamViec);
//		return "adminLichSu/LichSu-save";
//	}

	/*
	 * Get thêm công việc
	 */
	@RequestMapping("/user/themcongviec/{userId}")
	public String saveLichSu(@ModelAttribute("lichsulamviec") LichSuLamViec lichSuLamViec, ModelMap model, @PathVariable("userId") int userId) {
		
		model.addAttribute("userId", userId);
		return "userLichsulamviec/themCongViec";
	}
	
	/*
	 * POST list công việc
	 */
	@PostMapping("/user/themcongviec/{username}")
	public String saveLichSus(@ModelAttribute("lichsulamviec") LichSuLamViec lichSuLamViec, ModelMap model, @PathVariable("username") String username) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String name = authentication.getName();
		Users u = (Users) myUser.getUserByUsername(name);
		lichSuLamViec.setUserlichsu(u);
		System.out.println(u.getId());
		System.out.println(lichSuLamViec.getUserlichsu());
			lichSuService.saveChucvu(lichSuLamViec);
		return "redirect: /Duan/user/listLichSu/"+username;
	}

	/*
	 * POST sửa công việc
	 */
	@PostMapping("/user/suacongviec/{userId}")
	public String suaCongViec(@ModelAttribute("lichsulamviec") LichSuLamViec lichSuLamViec, ModelMap model, @PathVariable("userId") int username) {
		
		//get name
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String name = authentication.getName();
		
		//GET User by username
		Users u = (Users) myUser.getUserByUsername(name);
		if(u != null) {
			LichSuLamViec ls= lichSuService.findByIdLichSuLamViec(username);
			ls.setDiadiem(lichSuLamViec.getDiadiem());
			ls.setVaitro(lichSuLamViec.getVaitro());
			ls.setStartdate(lichSuLamViec.getStartdate());
			ls.setFinishdate(lichSuLamViec.getFinishdate());
			ls.setMota(lichSuLamViec.getMota());
			System.out.println(ls.getDiadiem());
			lichSuService.updateLichSu(ls);
			model.addAttribute("SucessMessage", "Update thanh cong!");
		}else {
			model.addAttribute("ErrorMessage", "co loi xay ra khi update");
		}
		System.out.println(name);
		return "redirect: /Duan/user/listLichSu/"+username;
	}
	/*
	 * delete công việc
	 */
	@RequestMapping("/user/listLichSu/lichsudelete/{id}")
	public String deleteLichSu(@PathVariable int id, ModelMap model, HttpServletRequest request) {
		if(lichSuService.deleteLichSu(id)) {
			model.addAttribute("deleteMessage", 1);
		}else {
			model.addAttribute("deleteMessage", 0);
		}
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String name = authentication.getName();
		
		return "redirect: /Duan/user/listLichSu/"+name;
	}
}
