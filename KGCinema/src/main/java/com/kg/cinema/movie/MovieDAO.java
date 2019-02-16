package com.kg.cinema.movie;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class MovieDAO {
	
	//org.mybatis.spring.SqlSessionTemplate
	@Autowired
	SqlSessionTemplate temp;
	
	public List<Moviebean> movieSelect() {
		List<Moviebean> list = temp.selectList("movie.selectAllDynamic");
		return list;
	}

}
