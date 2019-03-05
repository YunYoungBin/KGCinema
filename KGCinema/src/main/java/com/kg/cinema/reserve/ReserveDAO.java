package com.kg.cinema.reserve;

import java.text.SimpleDateFormat;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class ReserveDAO {
	
	//org.mybatis.spring.SqlSessionTemplate
	@Autowired
	SqlSessionTemplate temp;
	
	public List<Reservebean> reserveSelect(String r_theater, String r_scrno, String r_start) {
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Reservebean bean = new Reservebean();
		bean.setR_theater(r_theater);
		bean.setR_scrno(r_scrno);
		bean.setDate(r_start);
		List<Reservebean> list = temp.selectList("reserve.select", bean);
		return list;
	}
	
	public void reserveInsert(Reservebean bean) {

		temp.insert("reserve.insert", bean);
	}
	
	public List<Reservebean> reserveDetail(String id) {
		List<Reservebean> list = temp.selectList("reserve.detail", id);
		return list;
	}
	
	public List<Reservebean> oldReserveDetail(String id) {
		List<Reservebean> list = temp.selectList("reserve.oldDetail", id);
		return list;
	}

}
