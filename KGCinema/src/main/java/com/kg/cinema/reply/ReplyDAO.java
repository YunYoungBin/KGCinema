package com.kg.cinema.reply;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.kg.cinema.movie.Moviebean;

@Repository
@Component
public class ReplyDAO {
	
	//org.mybatis.spring.SqlSessionTemplate
	@Autowired
	SqlSessionTemplate temp;
	


}
