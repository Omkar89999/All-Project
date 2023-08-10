package com.enotes.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.enotes.dao.UserDao;
import com.enotes.entity.Notes;
import com.enotes.entity.User;

@Controller
@RequestMapping("/user/")
public class UserController {
	@Autowired
	private UserDao userDao;
	@RequestMapping(path = "/addNotes")
	public String addNotes() {
		return "add_notes";
	}

	@RequestMapping(path = "/viewNotes")
	public String viewNotes(HttpSession session,Model m) {
		User us=(User) session.getAttribute("userObj");
		List<Notes> notes=userDao.getNotesByUser(us);
		m.addAttribute("list",notes);
		
		return "view_notes";
	}

	@RequestMapping(path = "/editNotes")
	public String editNotes(@RequestParam("id")int id,Model m) {
		Notes n=userDao.getNotesById(id);
		m.addAttribute("notes",n);
		
		return "edit_notes";
	}
	@RequestMapping(path="/updateNotes",method = RequestMethod.POST)
	public String updateNotes(@ModelAttribute Notes n,HttpSession session) {
		User us=(User) session.getAttribute("userObj");
		n.setUser(us);
		
		userDao.updateNotes(n);
		session.setAttribute("msg", "Updated Successfully");	
		
		return "redirect:/user/viewNotes";
	}
	@RequestMapping(path="/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userObj");
		session.setAttribute("msg", "Logout Successfully");
		return "redirect:/login";
	}	
	@RequestMapping(path = "/saveNotes",method = RequestMethod.POST)
	public String saveNotes(@ModelAttribute Notes n,HttpSession session) {
		User us=(User) session.getAttribute("userObj");
//		 n.setDate(LocalDateTime.now().toString()); 
		n.setUser(us);
//		System.out.println(n);
		userDao.saveNotes(n);
		session.setAttribute("msg", "Notes Added Successfully");
		
		return "redirect:/user/addNotes";
	}
	@RequestMapping(path = "/deleteNotes")
	public String deleteNotes(@RequestParam("id") int id,HttpSession session) {
		userDao.deleteNotes(id);
		session.setAttribute("msg", "Notes Deleted Successfully");
//		return "redirect:/viewNotes";
		return "redirect:/user/viewNotes";
	}

}
