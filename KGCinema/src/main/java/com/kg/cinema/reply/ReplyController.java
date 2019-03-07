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
	
	//notice 	
	@RequestMapping(value = "/replylist.do", method = RequestMethod.GET)
	public ModelAndView replyList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView( );
		
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
			skey="dr_id"; sval="";
		}
		  
		//if(skey.equals("dr_id")) {AA = skey;}
		  
		if(skey.equals("dr_id") && sval!="") {
			BB = skey; 
		}
		  
		returnpage = "&keyfield=" + skey + "&keyword=" + sval;
		  
		int SearchTotal = rdao.ReplyCountSearch(skey, sval); //조회갯수
		    
		pnum=request.getParameter("pageNum");
		if(pnum=="" || pnum==null) {pnum="1";}
		else {pageNUM=Integer.parseInt(pnum);}
		  
		//[7클릭] 숫자7을 pageNUM변수가 기억
		start=(pageNUM-1)*10+1;
		end=(pageNUM)*10;
		  
		int Gtotal=rdao.ReplyCount(); //레코드전체갯수
		  
		if(SearchTotal%10==0){ pagecount=SearchTotal/10; } 
		else {pagecount=(SearchTotal/10)+1;}

		temp=(pageNUM-1)%10;
		startpage=pageNUM-temp;
		endpage=startpage+9; //[31]~~~[40]
		if(endpage > pagecount) {endpage = pagecount;}
		
		List<Replybean> LG=rdao.ReplySelect(start,end,skey,sval);
		
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
		mav.setViewName("reply/reply");
		return mav;
	}
	
	@RequestMapping(value="/replyinsert.do", method=RequestMethod.GET)
	public String replyInsert(Replybean rdto) {
	    System.out.println();
	    System.out.println("댓글컨트롤 넘어온idx="  + rdto.getDr_mno());
	    System.out.println("댓글컨트롤 넘어온id="  + rdto.getDr_id());
	    System.out.println("댓글컨트롤 넘어온point="  + rdto.getDr_point());
		System.out.println("댓글컨트롤 넘어온content="  + rdto.getDr_content());
		rdao.ReplyInsert(rdto);
		return "redirect:/moviedetail.do?idx="+rdto.getDr_mno();
	}	
	
	@RequestMapping(value="/replyedit.do", method=RequestMethod.GET)
	public ModelAndView replyEdit(HttpServletRequest request) {
		  ModelAndView mav = new ModelAndView( );
		  int idx=Integer.parseInt(request.getParameter("idx"));
		  int ridx=Integer.parseInt(request.getParameter("ridx"));
		  mav.addObject("ridx", ridx);
		  mav.setViewName("redirect:/moviedetail.do?idx="+ idx);
		  return mav;
	}//end
	
	@RequestMapping(value="/replyeditsave.do", method=RequestMethod.GET)
	public String replyEditSave(Replybean rdto) {
		rdao.ReplyEdit(rdto);
	    System.out.println("댓글컨트롤 넘어온ridx="  + rdto.getDr_no());
	    System.out.println("댓글컨트롤 넘어온id="  + rdto.getDr_id());
	    System.out.println("댓글컨트롤 넘어온point="  + rdto.getDr_point());
		System.out.println("댓글컨트롤 넘어온content="  + rdto.getDr_content());
		System.out.println("댓글컨트롤 넘어온idx="  + rdto.getDr_mno());
		return "redirect:/moviedetail.do?idx=" + rdto.getDr_mno();
	}	
	
	@RequestMapping(value="/replydelete.do", method=RequestMethod.GET)
	public ModelAndView replyDelete(HttpServletRequest request) {
		  ModelAndView mav = new ModelAndView( );
		  int idx=Integer.parseInt(request.getParameter("idx"));
		  int ridx=Integer.parseInt(request.getParameter("ridx"));
		  rdao.ReplyDelete(ridx);
		  mav.setViewName("redirect:/moviedetail.do?idx=" + idx);
		  return mav;
	}//end	
	
}
