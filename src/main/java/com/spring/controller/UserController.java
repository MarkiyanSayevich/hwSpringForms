package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.entity.User;
import com.spring.entity.enums.Gender;
import com.spring.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("editUserModel")
public class UserController {
	
	@Autowired private UserService userService;
	
	@GetMapping("/add")
	public String showAddUserFrom() {
		return "user/add-user";
	}
	
	@PostMapping("/add")
	public String addUser(
			@RequestParam("email") String email,
			@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName,
			@RequestParam("englishLevel") String englishLevel,
			@RequestParam("userGender") String userGender
			) {
		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setEmail(email);
		user.setEnglish(englishLevel);
		
		if(userGender.equals("MALE")) user.setGender(Gender.MALE);
		if(userGender.equals("FEMALE")) user.setGender(Gender.FEMALE);
		if(userGender.equals("UNKNOWN")) user.setGender(Gender.UNKNOWN);
		
		userService.saveUser(user);
		
		return "redirect:/";
	}
	
	@GetMapping("/users")
	public String showUsers(Model model) {
		model.addAttribute("usersList", userService.findAllUsers());
		return "user/list";
	}
	
	@GetMapping("/info/{userId}")
	public String showInfo(@PathVariable("userId") int userId, Model model) {
		model.addAttribute("userInfo", userService.findUserById(userId));
		
		return "/user/info";
	}
	
	@GetMapping("/delete/{userId}")
	public String deleteUser(@PathVariable("userId") int userId) {
		userService.deleteById(userId);
		
		return "redirect:/user/users";
	}
	
	@GetMapping("/email")
	public String showInfoByEmail(@RequestParam("userEmail") String userEmail , Model model) {
		model.addAttribute("userInfo", userService.findUserByEmail(userEmail));
		
		return "/user/info";
	}
	
	
	//Spring forms
	
	@GetMapping("/add_spring")
	public String addUserSpring(Model model) {
		model.addAttribute("userModel", new User());
		
		return "user/add-spring-form";
	}
	
	@PostMapping("/add_spring")
	public String saveUserSpring(
			@ModelAttribute("userModel") User user
			) {
		
		userService.saveUser(user);
		
		return "redirect:/";
	}
	
	@GetMapping("/edit/{userId}")
	public String showEditUser(@PathVariable("userId") int userId , Model model) {
		System.out.println(userId);
		User user = userService.findUserById(userId);
		model.addAttribute("editUserModel", user);
		
		return "user/edit";
	}
	
	@PostMapping("/edit")
	public String editStudent(@ModelAttribute("editUserModel") User user) {
		
		userService.saveUser(user);
		return "redirect:/";
	}
}
