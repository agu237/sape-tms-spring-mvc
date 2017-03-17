package com.sapient.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.sapient.tms.model.bean.Employee;

@Controller
@SessionAttributes("Employee")
@RequestMapping("/")
public class MainHomeController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView myMainHome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("HomeView");
		return mv;

	}

	@RequestMapping(value = "/SignIn")
	public ModelAndView mySignIn(@ModelAttribute("employee") Employee employee) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("accounts/SignInForm");
		mv.addObject("employee", new Employee());
		return mv;
	}

	@RequestMapping(value = "/SignUp")
	public ModelAndView mySignUp(@ModelAttribute("employee") Employee employee) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("accounts/SignUpForm");
		mv.addObject("employee", new Employee());
		return mv;
	}

	@RequestMapping(value= "/GoBack")
	public ModelAndView myGOBack() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("HomeView");
		return mv;

	}
}
