package com.kg.cinema.theater;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class TheaterDAO {
	
	//org.mybatis.spring.SqlSessionTemplate
	@Autowired
	SqlSessionTemplate temp;
	
	public List<Theaterbean> theaterSelect() {
		List<Theaterbean> list = temp.selectList("theater.select");
		return list;
	}

}
