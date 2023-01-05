package com.eco.domain;

import java.sql.Timestamp;

public class ProductVO {
	private int prod_num;
	private String prod_name;
	private String prod_img;
	private int price;
	private String detail;
	private String category;
	private Timestamp prod_date;
	private String prod_type;
	public int getProd_num() {
		return prod_num;
	}
	public void setProd_num(int prod_num) {
		this.prod_num = prod_num;
	}
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public String getProd_img() {
		return prod_img;
	}
	public void setProd_img(String prod_img) {
		this.prod_img = prod_img;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Timestamp getProd_date() {
		return prod_date;
	}
	public void setProd_date(Timestamp prod_date) {
		this.prod_date = prod_date;
	}
	public String getProd_type() {
		return prod_type;
	}
	public void setProd_type(String prod_type) {
		this.prod_type = prod_type;
	}
	@Override
	public String toString() {
		return "ProductVO [prod_num=" + prod_num + ", prod_name=" + prod_name + ", prod_img=" + prod_img + ", price="
				+ price + ", detail=" + detail + ", category=" + category + ", prod_date=" + prod_date + ", prod_Type="
				+ prod_type + ", getProd_num()=" + getProd_num() + ", getProd_name()=" + getProd_name()
				+ ", getProd_img()=" + getProd_img() + ", getPrice()=" + getPrice() + ", getDetail()=" + getDetail()
				+ ", getCategory()=" + getCategory() + ", getProd_date()=" + getProd_date() + ", getProd_Type()="
				+ getProd_type() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
	
}
