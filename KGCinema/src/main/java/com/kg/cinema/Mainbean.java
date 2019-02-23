package com.kg.cinema;

import org.springframework.web.multipart.MultipartFile;

public class Mainbean { 
  //eventList 
  private int ms_no;
  private java.util.Date ms_date;
  private String ms_file;
  private int ms_rn;
  private String ms_title;
  private String ms_subtitle;
  private String ms_content;
  
  private MultipartFile upload_file;
  
	public String getMs_title() {
	return ms_title;
	}
	public void setMs_title(String ms_title) {
		this.ms_title = ms_title;
	}
	public String getMs_subtitle() {
		return ms_subtitle;
	}
	public void setMs_subtitle(String ms_subtitle) {
		this.ms_subtitle = ms_subtitle;
	}
	public String getMs_content() {
		return ms_content;
	}
	public void setMs_content(String ms_content) {
		this.ms_content = ms_content;
	}
	public MultipartFile getUpload_file() {
		return upload_file;
	}
	public void setUpload_file(MultipartFile upload_file) {
		this.upload_file = upload_file;
	}
	public int getMs_no() {
		return ms_no;
	}
	public void setMs_no(int ms_no) {
		this.ms_no = ms_no;
	}
	public java.util.Date getMs_date() {
		return ms_date;
	}
	public void setMs_date(java.util.Date ms_date) {
		this.ms_date = ms_date;
	}
	public String getMs_file() {
		return ms_file;
	}
	public void setMs_file(String ms_file) {
		this.ms_file = ms_file;
	}
	public int getMs_rn() {
		return ms_rn;
	}
	public void setMs_rn(int ms_rn) {
		this.ms_rn = ms_rn;
	}  
  
  
	
}
