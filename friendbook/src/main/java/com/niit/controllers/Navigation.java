package com.niit.controllers;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.models.Message;
import com.niit.models.OutputMessage;

import com.niit.service.BlogService;
import com.niit.service.ForumService;
import com.niit.service.UsersService;

@Controller
public class Navigation {
	
	@Autowired
	private UsersService usersService;
	
	@Autowired
	private ForumService forumService;
	
	@Autowired
	private BlogService blogService;
	
	
	@RequestMapping(value={"/","/Home"})
	public String Homepage()
	{
		return "login";
	}
	
	@RequestMapping("/LoginSuccess")
	public String LoginSuccess(HttpSession session)
	{
		/*saving session attributes userid and name*/
		usersService.LoginSuccess(session);
		return "redirect:/Home";
	}
	
	@RequestMapping("blog")
	public String Blog(Model m)
	{
		m.addAttribute("BlogClicked", "true");
		return "login";
	}
	
	@RequestMapping("forum")
	public String Forum(Model m)
	{
		m.addAttribute("ForumClicked", "true");
		return "login";
	}
	
	@RequestMapping("forum/{fid}")
	public String ViewIndividualForum(@PathVariable("fid") int fid,  Model m)
	{
		m.addAttribute("forumList", forumService.getSingleForum(fid));
		m.addAttribute("IndividualForum", "true");
		return "login";
	}
	
	@RequestMapping("blog/{bid}")
	public String ViewIndividualBlog(@PathVariable("bid") int bid,  Model m)
	{
		m.addAttribute("blogList", blogService.getSingleBlog(bid));
		m.addAttribute("IndividualBlog", "true");
		return "login";
	}
	@RequestMapping("chat")
	public String Chat(Model m)
	{
		m.addAttribute("ChatClicked", "true");
		return "login";
	}
	@MessageMapping("/chat")
	@SendTo("/topic/message")
	public OutputMessage sendMessage(Message message) {
		return new OutputMessage(message, new Date());
	}
	
}
  