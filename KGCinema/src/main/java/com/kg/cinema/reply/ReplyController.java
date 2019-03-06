package com.kg.cinema.reply;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kg.cinema.join.JoinDAO;
import com.kg.cinema.join.Joinbean;

@Controller
public class ReplyController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);
	
	@Inject
	@Autowired
	ReplyDAO rdao;
	
	@RequestMapping(value = "/replywrite.do", method = RequestMethod.GET)
	public String replyWrite(Locale locale, Model model, HttpServletRequest request) {
		return "reply/reply";
	}//end
	
}
