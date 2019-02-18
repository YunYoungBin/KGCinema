package com.kg.cinema.join;

import java.text.DateFormat;
import java.util.Date;
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

import com.kg.cinema.movie.MovieDAO;
import com.kg.cinema.movie.Moviebean;

@Controller
public class JoinController {
	
	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);
	
	@Inject
	@Autowired
	JoinDAO dao;
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public ModelAndView join_insert() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("join/Input");
		return mav;
	}
	
}
