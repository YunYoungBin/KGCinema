package com.kg.cinema.admin;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kg.cinema.event.EventDAO;
import com.kg.cinema.event.Eventbean;
import com.kg.cinema.movie.MovieDAO;
import com.kg.cinema.movie.Moviebean;
import com.kg.cinema.notice.NoticeDAO;
import com.kg.cinema.notice.Noticebean;

@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	@Autowired
	MovieDAO mdao;
	@Autowired
	NoticeDAO ndao;
	@Autowired
	EventDAO edao;
	@Autowired
	AdminDAO adao;
	
	//notice 	
	@RequestMapping(value = "/noticemglist.do", method = RequestMethod.GET)
	public ModelAndView noticeMgList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView( );
		/*
		 HttpSession session = request.getSession();
			
		 if(session.getAttribute("temp") == null) {
				
		 } else {
				
		 }
		*/
		int startpage=1, endpage=10;
		String pnum="";
		int pageNUM=1, start=1,end=10;
		int pagecount=1,temp=0;
		String AA = "";
		String BB = "";
		// 검색
		
		String skey="", sval="", returnpage="";  
		skey=request.getParameter("keyfield");
		sval=request.getParameter("keyword"); 
		if(skey == "" || skey == null || sval == "" || sval ==null ) {
			skey="n_title"; sval="";
		}
		  
		//if(skey.equals("n_name")) {AA = skey;}
		  
		if(skey.equals("n_title") && sval!="") {
			BB = skey; 
		}
		  
		returnpage = "&keyfield=" + skey + "&keyword=" + sval;
		  
		int SearchTotal = ndao.NoticeCountSearch(skey, sval); //조회갯수
		    
		pnum=request.getParameter("pageNum");
		if(pnum=="" || pnum==null) {pnum="1";}
		else {pageNUM=Integer.parseInt(pnum);}
		  
		//[7클릭] 숫자7을 pageNUM변수가 기억
		start=(pageNUM-1)*10+1;
		end=(pageNUM)*10;
		  
		int Gtotal=ndao.NoticeCount(); //레코드전체갯수
		  
		if(SearchTotal%10==0){ pagecount=SearchTotal/10; } 
		else {pagecount=(SearchTotal/10)+1;}

		temp=(pageNUM-1)%10;
		startpage=pageNUM-temp;
		endpage=startpage+9; //[31]~~~[40]
		if(endpage > pagecount) {endpage = pagecount;}
		
		List<Noticebean> LG=ndao.NoticeSelect(start,end,skey,sval);
		
		mav.addObject("naver", LG);
		mav.addObject("Gtotal", Gtotal);
		mav.addObject("SearchTotal", SearchTotal);
		mav.addObject("startpage", startpage);
		mav.addObject("endpage", endpage);
		mav.addObject("pagecount", pagecount);
		mav.addObject("pageNUM", pageNUM);
		mav.addObject("returnpage", returnpage);
		mav.addObject("skey", skey);
		mav.addObject("sval", sval);
		mav.addObject("AA", AA);
		mav.addObject("BB", BB);
		mav.setViewName("admin/noticeManagement");
		return mav;
	}
	
	@RequestMapping(value = "/noticewrite.do", method = RequestMethod.GET)
	public String noticeWrite(Locale locale, Model model) {
		return "admin/noticeInsert";
	}//end
	
	@RequestMapping(value = "/noticeinsert.do", method = RequestMethod.GET)
	public String noticeInsert(Noticebean ndto) {  
		adao.NoticeInsert(ndto);
		return "redirect:/noticemglist.do" ;
	}//end
	
	@RequestMapping(value = "/noticedelete.do", method = RequestMethod.GET)
	public ModelAndView noticeDelete(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView( );
		int data=Integer.parseInt(request.getParameter("idx"));
		adao.NoticeDelete(data);
		mav.setViewName("redirect:/noticemglist.do");
		return mav;
	}//end
	
	@RequestMapping(value = "/noticeedit.do", method = RequestMethod.GET)
	public ModelAndView noticeEdit(HttpServletRequest request) {
	  ModelAndView mav = new ModelAndView( );
	  int data=Integer.parseInt(request.getParameter("idx"));
	  Noticebean ndto=ndao.NoticeDetail(data);
	  mav.addObject("notice", ndto);
	  mav.setViewName("admin/noticeEdit");
	  return mav;
	}//end
	
	
	
	//movie
	@RequestMapping(value = "/moviemglist.do", method = RequestMethod.GET)
	public ModelAndView movieMgList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView( );
		/*
		 HttpSession session = request.getSession();
			
		 if(session.getAttribute("temp") == null) {
				
		 } else {
				
		 }
		*/
		int startpage=1, endpage=10;
		String pnum="";
		int pageNUM=1, start=1,end=10;
		int pagecount=1,temp=0;
		String AA = "";
		String BB = "";
		// 검색
		
		String skey="", sval="", returnpage="";  
		skey=request.getParameter("keyfield");
		sval=request.getParameter("keyword"); 
		if(skey == "" || skey == null || sval == "" || sval ==null ) {
			skey="m_title"; sval="";
		}
		  
		//if(skey.equals("m_name")) {AA = skey;}
		  
		if(skey.equals("m_title") && sval!="") {
			BB = skey; 
		}
		  
		returnpage = "&keyfield=" + skey + "&keyword=" + sval;
		  
		int SearchTotal = mdao.MovieMgCountSearch(skey, sval); //조회갯수
		    
		pnum=request.getParameter("pageNum");
		if(pnum=="" || pnum==null) {pnum="1";}
		else {pageNUM=Integer.parseInt(pnum);}
		  
		//[7클릭] 숫자7을 pageNUM변수가 기억
		start=(pageNUM-1)*10+1;
		end=(pageNUM)*10;
		  
		int Gtotal=mdao.MovieMgCount(); //레코드전체갯수
		  
		if(SearchTotal%10==0){ pagecount=SearchTotal/10; } 
		else {pagecount=(SearchTotal/10)+1;}

		temp=(pageNUM-1)%10;
		startpage=pageNUM-temp;
		endpage=startpage+9; //[31]~~~[40]
		if(endpage > pagecount) {endpage = pagecount;}
		
		List<Moviebean> LG=mdao.MovieMgSelect(start,end,skey,sval);
		
		mav.addObject("naver", LG);
		mav.addObject("Gtotal", Gtotal);
		mav.addObject("SearchTotal", SearchTotal);
		mav.addObject("startpage", startpage);
		mav.addObject("endpage", endpage);
		mav.addObject("pagecount", pagecount);
		mav.addObject("pageNUM", pageNUM);
		mav.addObject("returnpage", returnpage);
		mav.addObject("skey", skey);
		mav.addObject("sval", sval);
		mav.addObject("AA", AA);
		mav.addObject("BB", BB);
		mav.setViewName("admin/movieManagement");
		return mav;
	}
	
	//event
	@RequestMapping(value = "/eventmglist.do", method = RequestMethod.GET)
	public ModelAndView eventMgList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView( );
		/*
		 HttpSession session = request.getSession();
			
		 if(session.getAttribute("temp") == null) {
				
		 } else {
				
		 }
		*/
		int startpage=1, endpage=10;
		String pnum="";
		int pageNUM=1, start=1,end=10;
		int pagecount=1,temp=0;
		String AA = "";
		String BB = "";
		// 검색
		
		String skey="", sval="", returnpage="";  
		skey=request.getParameter("keyfield");
		sval=request.getParameter("keyword"); 
		if(skey == "" || skey == null || sval == "" || sval ==null ) {
			skey="e_title"; sval="";
		}
		  
		//if(skey.equals("e_name")) {AA = skey;}
		  
		if(skey.equals("e_title") && sval!="") {
			BB = skey; 
		}
		  
		returnpage = "&keyfield=" + skey + "&keyword=" + sval;
		  
		int SearchTotal = edao.EventCountSearch(skey, sval); //조회갯수
		    
		pnum=request.getParameter("pageNum");
		if(pnum=="" || pnum==null) {pnum="1";}
		else {pageNUM=Integer.parseInt(pnum);}
		  
		//[7클릭] 숫자7을 pageNUM변수가 기억
		start=(pageNUM-1)*8+1;
		end=(pageNUM)*8;
		  
		int Gtotal=edao.EventCount(); //레코드전체갯수
		  
		if(SearchTotal%8==0){ pagecount=SearchTotal/8; } 
		else {pagecount=(SearchTotal/8)+1;}

		temp=(pageNUM-1)%10;
		startpage=pageNUM-temp;
		endpage=startpage+9; //[31]~~~[40]
		if(endpage > pagecount) {endpage = pagecount;}
		
		List<Eventbean> LG=edao.EventSelect(start,end,skey,sval);
		
		mav.addObject("naver", LG);
		mav.addObject("Gtotal", Gtotal);
		mav.addObject("SearchTotal", SearchTotal);
		mav.addObject("startpage", startpage);
		mav.addObject("endpage", endpage);
		mav.addObject("pagecount", pagecount);
		mav.addObject("pageNUM", pageNUM);
		mav.addObject("returnpage", returnpage);
		mav.addObject("skey", skey);
		mav.addObject("sval", sval);
		mav.addObject("AA", AA);
		mav.addObject("BB", BB);
		mav.setViewName("admin/eventManagement");
		return mav;
	}
	
}
