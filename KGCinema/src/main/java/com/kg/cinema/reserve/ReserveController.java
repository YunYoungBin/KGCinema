package com.kg.cinema.reserve;

import java.text.DateFormat;
import java.util.Calendar;
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

import com.kg.cinema.join.JoinDAO;
import com.kg.cinema.join.Joinbean;
import com.kg.cinema.login.EgovHttpSessionBindingListener;
import com.kg.cinema.movie.MovieDAO;
import com.kg.cinema.movie.Moviebean;
import com.kg.cinema.theater.TheaterDAO;
import com.kg.cinema.theater.Theaterbean;

@Controller
public class ReserveController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReserveController.class);
	
	@Inject
	@Autowired
	MovieDAO mdao;
	
	@Inject
	@Autowired
	JoinDAO jdao;
	
	@Inject
	@Autowired
	TheaterDAO tdao;
	
	@RequestMapping(value = "/reserveMain.do", method = RequestMethod.GET)
	public ModelAndView reserve_main(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		if(request.getSession().getAttribute("temp") != null) {
			Joinbean bean = jdao.myInfo((String)request.getSession().getAttribute("temp"));
			mav.addObject("bean", bean);
		}
		
		List<Moviebean> movieList = mdao.movieSelect();
		List<Theaterbean> theaterList = tdao.theaterSelect();
		
		Calendar cal = Calendar.getInstance();
		String year = String.valueOf(cal.get(Calendar.YEAR));
		String month = String.valueOf(cal.get(Calendar.MONTH)+1);
		String day = String.valueOf(cal.get(Calendar.DAY_OF_MONTH));
		
		if(Integer.parseInt(month) < 10) {
			month = "0" + month;
		} else if(Integer.parseInt(day) < 10) {
			day = "0" + day;
		}
		
		String today = year + "-" + month + "-" + day;
		
		mav.addObject("date", today);
		mav.addObject("movie", movieList);
		mav.addObject("movie", movieList);
		mav.setViewName("reserve/movieReserve");
		return mav;
	}
	
}
