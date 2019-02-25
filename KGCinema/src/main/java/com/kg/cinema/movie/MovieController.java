package com.kg.cinema.movie;

import java.io.IOException;
import java.io.PrintWriter;
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

import com.kg.cinema.event.Eventbean;
import com.kg.cinema.movie.MovieDAO;
import com.kg.cinema.movie.Moviebean;

@Controller
public class MovieController {
	
	private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
	
	@Inject
	@Autowired
	MovieDAO mdao;
	
	@RequestMapping(value = "/movielist.do", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		/*
		HttpSession session = request.getSession();
		
		if(session.getAttribute("temp") == null) {
			
		} else {
			
		}
		*/
		
		List<Moviebean> movieList = mdao.movieSelect();
		List<Moviebean> next = mdao.movieSelectNext();
		List<Moviebean> mvs = mdao.MovieSlideSelect();
		
		mav.addObject("movie", movieList);
		mav.addObject("next", next);
		mav.addObject("mvs", mvs);
		mav.setViewName("movie/movieList");
		return mav;
	}
	
	@RequestMapping(value = "/moviedetail.do", method = RequestMethod.GET)
		public ModelAndView bbs_detail(HttpServletRequest request) {
		  ModelAndView mav = new ModelAndView( );
		  int data=Integer.parseInt(request.getParameter("idx")); 
		  Moviebean mdto=mdao.movieDetail(data);
		  mav.addObject("movie", mdto);
		  mav.setViewName("movie/movieDetail");
		  return mav;
	}//end
	
	@RequestMapping(value = "/videopopup.do", method = RequestMethod.GET)
	public void eventDetail(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		String mvs_no = request.getParameter("mvs_no");
		System.out.println("mvs_no= " + mvs_no);
		Moviebean mvsdto = mdao.VideoPopUp(mvs_no);
		StringBuilder sb = new StringBuilder();
		System.out.println("mvs_video= " + mvsdto.getMvs_video());
		sb.append("{");
		sb.append("\"mvs_video\": \"" + mvsdto.getMvs_video() + "\" " );
		sb.append("}");
		out.print(sb.toString());
	}//end	
}
