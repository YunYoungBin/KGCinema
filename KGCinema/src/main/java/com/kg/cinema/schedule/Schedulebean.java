package com.kg.cinema.schedule;

public class Schedulebean {
	private int schedule_id;
	private String theater;
	private String scrno;
	private String title;
	private java.util.Date starthour;
	private java.util.Date endhour;

	private java.util.Date date;
	
	public java.util.Date getDate() {
		return date;
	}
	public void setDate(java.util.Date date) {
		this.date = date;
	}
	
	public int getSchedule_id() {
		return schedule_id;
	}
	public void setSchedule_id(int schedule_id) {
		this.schedule_id = schedule_id;
	}
	public String getTheater() {
		return theater;
	}
	public void setTheater(String theater) {
		this.theater = theater;
	}
	public String getScrno() {
		return scrno;
	}
	public void setScrno(String scrno) {
		this.scrno = scrno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public java.util.Date getStarthour() {
		return starthour;
	}
	public void setStarthour(java.util.Date starthour) {
		this.starthour = starthour;
	}
	public java.util.Date getEndhour() {
		return endhour;
	}
	public void setEndhour(java.util.Date endhour) {
		this.endhour = endhour;
	}
}
