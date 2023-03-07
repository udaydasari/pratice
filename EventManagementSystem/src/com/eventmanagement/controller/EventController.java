package com.eventmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eventmanagement.entity.Events;
//import com.eventmanagement.entity.Eventuser;
import com.eventmanagement.service.EventServices;

@Controller
@RequestMapping("/events")
public class EventController {
	
	@Autowired
	private EventServices eventServices;
	
	@RequestMapping("/firstpage")
	public String firstPage(Model theModel)
	{
		String message = "fine";
		theModel.addAttribute("message", message);
		return "login-page";
	}
	
	@RequestMapping("/list")
	public String listCustomers(Model theModel)
	{
		List<Events> theEvents = eventServices.getEvents();
		
		theModel.addAttribute("events",theEvents);
		
		return "list-events";
	}
	
	@GetMapping("/LoginUser")
	public String authenticateUser(@RequestParam("username") String username,@RequestParam("password") String password, Model theModel)
	{
		boolean result = eventServices.userAuthenticate(username,password);
		
		if(result)
		{
			return "redirect:/events/WelcomePage";
		}
		else
		{
			String message = "error";
			theModel.addAttribute("message", message);
			return "login-page";
		}
		
	}
	
	@RequestMapping("/WelcomePage")
	public String openWelcomePage()
	{
		return "welcome-page";
	}
	
	@GetMapping("/showSingleEvent")
	public String showSingleEvent(@RequestParam("eventId") int theId,Model theModel)
	{
		Events theEvent = eventServices.getEvent(theId);
		
		theModel.addAttribute("event", theEvent);
		
		return "event-page";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel)
	{
		Events theEvent = new Events();
		
		theModel.addAttribute("event", theEvent);
		
		return "event-form";
	}
	
	@PostMapping("/saveEvent")
	public String saveCustomer(@ModelAttribute("event") Events theEvent)
	{
		eventServices.saveEvent(theEvent);
		return "redirect:/events/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("eventId") int theId, Model theModel)
	{
		Events theEvent = eventServices.getEvent(theId);
		
		theModel.addAttribute("event", theEvent);
		return "event-form";
	}
	
	@GetMapping("/deleteEvent")
	public String deleteCustomer(@RequestParam("eventId") int theId)
	{
		eventServices.deleteEvent(theId);
		
		return "redirect:/events/list";
	}
	
	

}
