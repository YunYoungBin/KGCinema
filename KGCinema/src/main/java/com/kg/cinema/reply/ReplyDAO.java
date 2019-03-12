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
	
	public Replybean ReplySelect(int data , String id){
		Replybean rdto = new Replybean();
		rdto.setDr_mno(data);
		rdto.setDr_id(id);
		Replybean bean =temp.selectOne("reply.replySelect", rdto);
		return bean;
	}//end	
	
	public int ReplyCount() {
		int cnt=(Integer)temp.selectOne("reply.countAll");
		return cnt;
	}//end
	
	public int Count(int mno) {
		System.out.println("CountDaomno= " + mno);
		int cnt=(Integer)temp.selectOne("reply.countReply", mno);
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
	
	public String ScoreSum(String mno) {
		System.out.println("ScoreSumDao= " + mno);
		String cnt=temp.selectOne("reply.scoreSum", mno);
		return cnt;
	}//end	
	
	public void ReplyInsert(int score, String id, int mno) {
		Replybean rdto = new Replybean();
		rdto.setDr_point(score);
		rdto.setDr_id(id);
		rdto.setDr_mno(mno);		
		System.out.println("daoscore: " + score);
		System.out.println("daoid: " + id);
		System.out.println("daomno: " + mno);
		temp.insert("reply.replyInsert", rdto);
	}//end
	public void ReplyDelete(int data) {
		 temp.delete("reply.replyDel", data);
	}//end
	public void ReplyEdit(int score, int dr_no, String content) {
		Replybean rdto = new Replybean();
		rdto.setDr_point(score);
		rdto.setDr_no(dr_no);
		rdto.setDr_content(content);
		System.out.println("daodr_no: " + dr_no);
		System.out.println("daoscore: " + score);
		System.out.println("daocontent: " + content);
		temp.update("reply.replyEdit", rdto);
	}//end
	public void ReplyEdit2(Replybean rdto) {
		temp.update("reply.replyEdit",rdto);
	}//end	
	
}
