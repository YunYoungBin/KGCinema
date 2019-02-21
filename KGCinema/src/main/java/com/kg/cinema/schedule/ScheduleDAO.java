package com.kg.cinema.schedule;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class ScheduleDAO {
	
	//org.mybatis.spring.SqlSessionTemplate
	@Autowired
	SqlSessionTemplate temp;
	
	public List<Schedulebean> scheduleSelect(String date, String theater, String movie) {
		ScheduleSelectbean bean = new ScheduleSelectbean();
		bean.setDate(date);
		bean.setTheater(theater);
		bean.setMovie(movie);
		List<Schedulebean> list = temp.selectList("schedule.select", bean);
		return list;
	}
	
	public Schedulebean scheduleDetail(int idx) {
		return temp.selectOne("schedule.detail", idx);
	}
	

}
