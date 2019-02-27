package com.kg.cinema.screen;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.kg.cinema.theater.Theaterbean;

@Repository
@Component
public class ScreenDAO {
	
	//org.mybatis.spring.SqlSessionTemplate
	@Autowired
	SqlSessionTemplate temp;
	
	public Screenbean screenSelect(String theater, String scrno) {
		Screenbean bean = new Screenbean();
		bean.setS_theater(theater);
		bean.setS_scrno(scrno);
		Screenbean sbean = temp.selectOne("screen.select", bean);
		return sbean;
	}
	
	public List<Screenbean> screenCount() {
		List<Screenbean> list = temp.selectList("screen.count");
		return list;
	}
	
	public List<Screenbean> ScreenMgSelect(int start2, int end2, String skey2, String sval2){
		Screenbean sdto = new Screenbean();
		sdto.setStart2(start2);
		sdto.setEnd2(end2);
		sdto.setSkey2(skey2);
		sdto.setSval2(sval2);
		System.out.println(start2);
		System.out.println(end2);
		System.out.println(skey2);
		System.out.println(sval2);
		List<Screenbean> list=temp.selectList("screen.screenMgSelectAll", sdto);
		return list;
	}//end	
	
	public int ScreenMgCount() {
		int cnt=(Integer)temp.selectOne("screen.ScreenMgcountAll");
		return cnt;
	}//end
		 
	public int ScreenMgCountSearch(String skey2, String sval2) {
		Screenbean sdto = new Screenbean();
		sdto.setSkey2(skey2);
		sdto.setSval2(sval2);
		System.out.println(skey2);
		System.out.println(sval2);
		int cnt=(Integer)temp.selectOne("screen.screenMgcountAllSearch" , sdto);
		return cnt;
	}//end			
	
	public Screenbean ScreenDetail(int data) {
		Screenbean tdto=temp.selectOne("screen.screenDetail",data);
		return tdto;
	}//end	
	
}
