package com.kg.cinema.screen;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

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
	
}
