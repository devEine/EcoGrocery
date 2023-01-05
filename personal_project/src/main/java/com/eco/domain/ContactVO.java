package com.eco.domain;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;


public class ContactVO {
	private String email;
	private String title;
	private String content;
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date contact_date;
	private String contact_name;
	private Integer contact_num;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getContact_date() {
		return contact_date;
	}
	public void setContact_date(Date contact_date) {
		this.contact_date = contact_date;
	}
	public String getContact_name() {
		return contact_name;
	}
	public void setContact_name(String contact_name) {
		this.contact_name = contact_name;
	}
	public Integer getContact_num() {
		return contact_num;
	}
	public void setContact_num(Integer contact_num) {
		this.contact_num = contact_num;
	}
	
	@Override
	public String toString() {
		return "ContactVO [email=" + email + ", title=" + title + ", content=" + content + ", contact_date="
				+ contact_date + ", contact_name=" + contact_name + ", contact_num=" + contact_num + ", getEmail()="
				+ getEmail() + ", getTitle()=" + getTitle() + ", getContent()=" + getContent() + ", getContact_date()="
				+ getContact_date() + ", getContact_name()=" + getContact_name() + ", getContact_num()="
				+ getContact_num() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
}
