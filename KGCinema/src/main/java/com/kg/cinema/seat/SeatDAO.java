package com.kg.cinema.seat;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class SeatDAO {
	
	//org.mybatis.spring.SqlSessionTemplate
	@Autowired
	SqlSessionTemplate temp;
	
	public List<Seatbean> seatSelect(int seatstyle) {
		List<Seatbean> list = temp.selectList("seat.select", seatstyle);
		return list;
	}


}
