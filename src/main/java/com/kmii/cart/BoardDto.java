package com.kmii.cart;

public class BoardDto {
	
		private int bnum;
		private String bproduct;
		private String bcolor;
		private String bquantity;

	
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}


	public BoardDto(int bnum, String bproduct, String bcolor, String bquantity) {
		super();
		this.bnum = bnum;
		this.bproduct = bproduct;
		this.bcolor = bcolor;
		this.bquantity = bquantity;
	}


	public int getBnum() {
		return bnum;
	}


	public void setBnum(int bnum) {
		this.bnum = bnum;
	}


	public String getBproduct() {
		return bproduct;
	}


	public void setBproduct(String bproduct) {
		this.bproduct = bproduct;
	}


	public String getBcolor() {
		return bcolor;
	}


	public void setBcolor(String bcolor) {
		this.bcolor = bcolor;
	}


	public String getBquantity() {
		return bquantity;
	}


	public void setBquantity(String bquantity) {
		this.bquantity = bquantity;
	}  
	
	
	
	

}
