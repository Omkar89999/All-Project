package com.enotes.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.enotes.dao.UserDao;
import com.enotes.entity.User;

@Controller
public class HomeController {

	@Autowired
	private UserDao userDao;

	@RequestMapping(path = "/home")
	public String homePage() {
		return "home";
	}

	@RequestMapping(path = "/register")
	public String registerPage() {
		return "register";
	}

	@RequestMapping(path = "/login")
	public String loginPage() {
		return "login";
	}

	/*
	 * @RequestMapping(path = "/addNotes") public String addNotes() { return
	 * "add_notes"; }
	 * 
	 * @RequestMapping(path = "/viewNotes") public String viewNotes() { return
	 * "view_notes"; }
	 * 
	 * @RequestMapping(path = "/editNotes") public String editNotes() { return
	 * "edit_notes"; }
	 */

	@RequestMapping(path = "/registerUser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute User user, HttpSession session) {
//		System.out.println(user);
		userDao.saveUser(user);

		session.setAttribute("msg", "User Register Successfully");

		return "redirect:/register";
	}

	@RequestMapping(path = "/loginUser", method = RequestMethod.POST)
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session) {
		User user = userDao.login(email, password);
		if (user != null) {
			session.setAttribute("userObj", user);

			return "redirect:/home";
		} else {
			session.setAttribute("msg", "Invalid Email / Password");
			return "redirect:/login";

		}

	}

}
