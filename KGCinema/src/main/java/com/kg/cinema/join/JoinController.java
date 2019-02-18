package com.kg.cinema.join;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	
	@RequestMapping("/join.do")
	public String join_insertSave(Joinbean bean) {
		System.out.println("이름 = " + bean.getJ_name());
		bean.setJ_birth(bean.getYear()+"-"+bean.getMonth()+"-"+bean.getDay());
		bean.setJ_phone(bean.getNum1()+"-"+bean.getNum2()+"-"+bean.getNum3());
		dao.insertSave(bean);
		return "redirect:/home.do";
	}
	
	@RequestMapping("/check.do")
	public void check(HttpServletResponse response, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		PrintWriter out;
		try {
			out = response.getWriter();
			String id = request.getParameter("id");
			int count = dao.idCheck(id);
			if(count == 1) {
				out.print(count);
			} else {
				mav.addObject("check", count);
				out.print(count);
			}
		} catch(IOException e) {
			e.printStackTrace();
		}
		return ;
	}
	
}
