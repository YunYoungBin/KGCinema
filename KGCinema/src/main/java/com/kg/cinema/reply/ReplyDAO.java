package com.kg.cinema.reply;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.kg.cinema.movie.Moviebean;
import com.kg.cinema.notice.Noticebean;

@Repository
@Component
public class ReplyDAO {
	
	//org.mybatis.spring.SqlSessionTemplate
	@Autowired
	SqlSessionTemplate temp;
	
	public List<Replybean> ReplySelect(int start, int end, String skey, String sval){
		Replybean dto = new Replybean();
		dto.setStart(start);
		dto.setEnd(end);
		dto.setSkey(skey);
		dto.setSval(sval);
		System.out.println(start);
		System.out.println(end);
		System.out.println(skey);
		System.out.println(sval);
		List<Replybean> list=temp.selectList("reply.replySelectAll", dto);
		return list;
	}//end
	
	public int ReplyCount() {
		int cnt=(Integer)temp.selectOne("reply.countAll");
		return cnt;
	}//end
	
	public int ReplyCountSearch(String skey, String sval) {
		Replybean dto = new Replybean();
		dto.setSkey(skey);
		dto.setSval(sval);
		System.out.println(skey);
		System.out.println(sval);
		int cnt=(Integer)temp.selectOne("reply.countAllSearch" , dto);
		return cnt;
	}//end
	
	public void ReplyInsert(Replybean rdto) {
		temp.insert("reply.replyInsert", rdto);
	}//end
	public void ReplyDelete(int data) {
		 temp.delete("reply.replyDel", data);
	}//end
	public void ReplyEdit(Replybean rdto) {
		temp.update("reply.replyEdit",rdto);
	}//end	
	
}
