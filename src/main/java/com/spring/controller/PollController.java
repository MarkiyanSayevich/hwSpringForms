package com.spring.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.entity.Poll;
import com.spring.entity.enums.Gender;
import com.spring.service.PollService;

@Controller
@RequestMapping("/poll")
public class PollController {

	@Autowired PollService pollservice;
	
	@GetMapping("/add")
	private String goPoll(Model model) {
		model.addAttribute("pollModel", new Poll());
		
		Integer[] ages = {16,17,18,19,20};
		model.addAttribute("ages", ages);
		
		List<Gender> genders = Arrays.asList(Gender.MALE,Gender.FEMALE,Gender.UNKNOWN);
		model.addAttribute("genders", genders);
		
		List<String> soNet = Arrays.asList("Vkontakte","Facebook","Linkedin","Youtube","Twitch","Telehram","WhatSapp");
		model.addAttribute("soNet", soNet);
		
		List<String> progLang = Arrays.asList("Java","Pyton","Ruby","C#","C++","Pasqual");
		model.addAttribute("progLang", progLang);
		
		List<String> opSys = Arrays.asList("Windows","Linux" ,"Obunto","Vista","DOS","Apple");
		model.addAttribute("opSys", opSys);
		
		List<String> education = Arrays.asList("Немає","Молодший спеціаліст","Бакалавр","Магістр");
		model.addAttribute("education", education);
		
		List<String> exp = Arrays.asList("немає","пів року","1-2 роки","2+ роки");
				model.addAttribute("exp", exp);
		
		List<String> prRank = Arrays.asList("worker","junior","middle","senior","manager");
		model.addAttribute("prRank", prRank);
		
		List<String> tech = Arrays.asList("MySQL","JDBC","Hibernate","HTML","CSS","JPA","MVC","Git");
		model.addAttribute("tech", tech);
		
		List<String> wdyf = Arrays.asList("Google","Facebook","Vkontakte","From frends","Other");
		model.addAttribute("wdyf", wdyf);
		return "poll/go-poll";
	}
	
	@PostMapping("/add")
	private String addPoll(
			@ModelAttribute("pollModel") Poll poll,
			@RequestParam("gender") String gender,
			@RequestParam("email") String email
			) {
		
		poll.setEmail(email);
		if(gender.equals("MALE")) poll.setGender(Gender.MALE);
		if(gender.equals("FEMALE")) poll.setGender(Gender.FEMALE);
		if(gender.equals("UNKNOWN")) poll.setGender(Gender.UNKNOWN);
		
		pollservice.savePoll(poll);
		return "redirect:/";
	}
	
	@GetMapping("/list")
	private String ShowListPoll(Model model) {
		model.addAttribute("pollList", pollservice.findAllPolls());
		return "poll/list-poll";
	}
	
	@GetMapping("/info/{pollId}")
	private String showPollInfo(
			@PathVariable("pollId") Integer id , Model model 
			) {
		Poll poll = pollservice.findPollById(id);
		for(int i = 0; i < poll.getSocialNetworks().length;i++) {
			System.out.println(poll.getSocialNetworks()[i]);
		}
		model.addAttribute("pollModel", poll);
		return "poll/info";
	}
}
