package com.kg.cinema.admin;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
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
	
	@Autowired
	private ServletContext  application;
	
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
	
	@RequestMapping("/noticeeditsave.do")
	public String noticeEditSave(Noticebean ndto) {   		  
	  adao.NoticeEdit(ndto); 
	  return "redirect:/noticemglist.do";
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
	//////////////
	@RequestMapping(value = "/moviewrite.do", method = RequestMethod.GET)
	public String movieWrite(Locale locale, Model model) {
		return "admin/movieInsert";
	}//end
	
	@RequestMapping(value = "/movieinsert.do", method = RequestMethod.POST)
	public String movieInsert(Moviebean mdto) throws ParseException {  
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date ee = null;
	    try {
	    	ee = sdf.parse(mdto.getUpload_premiere());
	    } catch (ParseException e1) {
	    	e1.printStackTrace();
	    }
		  String path=application.getRealPath("/resources/storage");
		  System.out.println(path);
		  String poster=mdto.getUpload_poster().getOriginalFilename();
		  String steal1=mdto.getUpload_steal1().getOriginalFilename();
		  String steal2=mdto.getUpload_steal2().getOriginalFilename();
		  String steal3=mdto.getUpload_steal3().getOriginalFilename();
		  String steal4=mdto.getUpload_steal4().getOriginalFilename();
		  String steal5=mdto.getUpload_steal5().getOriginalFilename();
		  File file1 = new File( path, poster);
		  File file2 = new File( path, steal1);
		  File file3 = new File( path, steal2);
		  File file4 = new File( path, steal3);
		  File file5 = new File( path, steal4);
		  File file6 = new File( path, steal5);
		    
		try{ 
			mdto.getUpload_poster().transferTo(file1);
			mdto.getUpload_steal1().transferTo(file2);
			mdto.getUpload_steal2().transferTo(file3);
			mdto.getUpload_steal3().transferTo(file4);
			mdto.getUpload_steal4().transferTo(file5);
			mdto.getUpload_steal5().transferTo(file6);
		}catch(Exception ex){ }
			mdto.setM_poster(poster);
			mdto.setM_steal1(steal1);
			mdto.setM_steal2(steal2);
			mdto.setM_steal3(steal3);
			mdto.setM_steal4(steal4);
			mdto.setM_steal5(steal5);
			mdto.setM_premiere(ee);
			
			System.out.println("no : " + mdto.getM_no());
			System.out.println("actor : " + mdto.getM_actor());
			System.out.println("director : " + mdto.getM_director());
			System.out.println("genre : " + mdto.getM_genre());
			System.out.println("grade : " + mdto.getM_grade());
			System.out.println("poster : " + mdto.getM_poster());
			System.out.println("steal1 : " + mdto.getM_steal1());
			System.out.println("steal2 : " + mdto.getM_steal2());
			System.out.println("steal3 : " + mdto.getM_steal3());
			System.out.println("steal4 : " +mdto.getM_steal4());
			System.out.println("steal5 : " + mdto.getM_steal5());
			System.out.println("story : " + mdto.getM_story());
			System.out.println("subtitle : " + mdto.getM_subtitle());
			System.out.println("title : " + mdto.getM_title());
			System.out.println("premiere : " + mdto.getM_premiere());
			System.out.println("type : " + mdto.getM_type());
			adao.MovieInsert(mdto);
			return "redirect:/moviemglist.do" ;
	}//end
	
	@RequestMapping(value = "/moviedelete.do", method = RequestMethod.GET)
	public ModelAndView movieDelete(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView( );
		int data=Integer.parseInt(request.getParameter("idx"));
		adao.MovieDelete(data);
		mav.setViewName("redirect:/moviemglist.do");
		return mav;
	}//end
	
	@RequestMapping(value = "/movieedit.do", method = RequestMethod.GET)
	public ModelAndView movieEdit(HttpServletRequest request) {
	  ModelAndView mav = new ModelAndView( );
	  int data=Integer.parseInt(request.getParameter("idx"));
	  Moviebean mdto=mdao.movieDetail(data);
	  mav.addObject("movie", mdto);
	  mav.setViewName("admin/movieEdit");
	  return mav;
	}//end
	
	@RequestMapping(value = "/movieeditsave.do", method = RequestMethod.POST)
	public String movieEditSave(Moviebean mdto) throws ParseException, IOException {   
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date ee = null;
		
	    try {
	    	ee = sdf.parse(mdto.getUpload_premiere());
	    } catch (ParseException e1) {
	    	e1.printStackTrace();
	    }
		  String path=application.getRealPath("/resources/storage");
		  
		  if(!mdto.getUpload_poster().getOriginalFilename().equals("")) {
			  MultipartFile mf1=mdto.getUpload_poster();
			  String poster=mf1.getOriginalFilename();
			  File file1=new File(path, poster);
			  FileCopyUtils.copy(mdto.getUpload_poster().getBytes(), file1);
			  mdto.setM_poster(poster);
		  }else {
			  mdto.setM_poster(mdto.getM_poster());
		  }
		  if(!mdto.getUpload_steal1().getOriginalFilename().equals("")) {
			  MultipartFile mf2=mdto.getUpload_steal1();
			  String steal1=mf2.getOriginalFilename();
			  File file2=new File(path, steal1);
			  FileCopyUtils.copy(mdto.getUpload_steal1().getBytes(), file2);
			  mdto.setM_steal1(steal1);
		  }else {
			  mdto.setM_steal1(mdto.getM_steal1());
		  }
		  if(!mdto.getUpload_steal2().getOriginalFilename().equals("")) {
			  MultipartFile mf3=mdto.getUpload_steal2();
			  String steal2=mf3.getOriginalFilename();
			  File file3=new File(path, steal2);
			  FileCopyUtils.copy(mdto.getUpload_steal2().getBytes(), file3);
			  mdto.setM_steal2(steal2);
		  }else {
			  mdto.setM_steal2(mdto.getM_steal2());
		  }
		  if(!mdto.getUpload_steal3().getOriginalFilename().equals("")) {
			  MultipartFile mf4=mdto.getUpload_steal3();
			  String steal3=mf4.getOriginalFilename();
			  File file4=new File(path, steal3);
			  FileCopyUtils.copy(mdto.getUpload_steal3().getBytes(), file4);
			  mdto.setM_steal3(steal3);
		  }else {
			  mdto.setM_steal3(mdto.getM_steal3());
		  }
		  if(!mdto.getUpload_steal4().getOriginalFilename().equals("")) {
			  MultipartFile mf5=mdto.getUpload_steal4();
			  String steal4=mf5.getOriginalFilename();
			  File file5=new File(path, steal4);
			  FileCopyUtils.copy(mdto.getUpload_steal4().getBytes(), file5);
			  mdto.setM_steal4(steal4);
		  }else {
			  mdto.setM_steal4(mdto.getM_steal4());
		  }
		  if(!mdto.getUpload_steal5().getOriginalFilename().equals("")) {
			  MultipartFile mf6=mdto.getUpload_steal5();
			  String steal5=mf6.getOriginalFilename();
			  File file6=new File(path, steal5);
			  FileCopyUtils.copy(mdto.getUpload_steal5().getBytes(), file6);
			  mdto.setM_steal5(steal5);
		  }else {
			  mdto.setM_steal5(mdto.getM_steal5());   
		  }

		   mdto.setM_premiere(ee);
		   
		  
		   
			System.out.println("no : " + mdto.getM_no());
			System.out.println("actor : " + mdto.getM_actor());
			System.out.println("director : " + mdto.getM_director());
			System.out.println("genre : " + mdto.getM_genre());
			System.out.println("grade : " + mdto.getM_grade());
			System.out.println("poster : " + mdto.getM_poster());
			System.out.println("steal1 : " + mdto.getM_steal1());
			System.out.println("steal2 : " + mdto.getM_steal2());
			System.out.println("steal3 : " + mdto.getM_steal3());
			System.out.println("steal4 : " +mdto.getM_steal4());
			System.out.println("steal5 : " + mdto.getM_steal5());
			System.out.println("story : " + mdto.getM_story());
			System.out.println("subtitle : " + mdto.getM_subtitle());
			System.out.println("title : " + mdto.getM_title());
			System.out.println("premiere : " + mdto.getM_premiere());
			System.out.println("type : " + mdto.getM_type());
		   adao.MovieEdit(mdto); 
		   return "redirect:/moviemglist.do";
	}//end
	
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
	
	@RequestMapping(value = "/eventwrite.do", method = RequestMethod.GET)
	public String eventWrite(Locale locale, Model model) {
		return "admin/eventInsert";
	}//end
	
	@RequestMapping(value = "/eventinsert.do", method = RequestMethod.POST)
	public String eventInsert(Eventbean edto) {  

		  String path=application.getRealPath("/resources/storage");
		  String img=edto.getUpload_file().getOriginalFilename();
		  String content=edto.getUpload_content().getOriginalFilename();
		  
		  File file1 = new File( path, img);
		  File file2 = new File( path, content);
		    
		try{ 
			edto.getUpload_file().transferTo(file1); 
			edto.getUpload_content().transferTo(file2);
			
		}catch(Exception ex){ }
		
		edto.setE_file(img);
		edto.setE_content(content);
		adao.EventInsert(edto);
		return "redirect:/eventmglist.do" ;
	}//end
	
	@RequestMapping(value = "/eventdelete.do", method = RequestMethod.GET)
	public ModelAndView eventDelete(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView( );
		int data=Integer.parseInt(request.getParameter("idx"));
		adao.EventDelete(data);
		mav.setViewName("redirect:/eventmglist.do");
		return mav;
	}//end
	
	@RequestMapping(value = "/eventedit.do", method = RequestMethod.GET)
	public ModelAndView eventEdit(HttpServletRequest request) {
	  ModelAndView mav = new ModelAndView( );
	  int data=Integer.parseInt(request.getParameter("idx"));
	  Eventbean edto=edao.EventDetail(data);
	  mav.addObject("event", edto);
	  mav.setViewName("admin/eventEdit");
	  return mav;
	}//end
	
	@RequestMapping(value = "/eventeditsave.do", method = RequestMethod.POST)
	public String eventEditSave(Eventbean edto) throws IOException {   
	 String path=application.getRealPath("/resources/storage");
	 
	 if(!edto.getUpload_file().getOriginalFilename().equals("")) {
		 MultipartFile mf1=edto.getUpload_file();
		 String img=mf1.getOriginalFilename();
		 File file1=new File(path, img);
		 FileCopyUtils.copy(edto.getUpload_file().getBytes(), file1);
		 edto.setE_file(img);
	 }else {
		 edto.setE_file(edto.getE_file());
	 }
		  
	 if(!edto.getUpload_file().getOriginalFilename().equals("")) {
		 MultipartFile mf2=edto.getUpload_content();
		 String content=mf2.getOriginalFilename();	  
		 File file2=new File(path, content);	  
		 FileCopyUtils.copy(edto.getUpload_content().getBytes(), file2);	  
		 edto.setE_content(content);
	 }else {
		 edto.setE_content(edto.getE_content());
	 }	  
	 adao.EventEdit(edto); 
	 return "redirect:/eventmglist.do";
	}//end
	
}
