package com.tjoeun.admin;

public class AdminVO {
	private int itemNum;
	private String itemName;
	private String itemPrice;
	private String itemcontent;
	
	public int getItemNum() {
		return itemNum;
	}
	public void setItemNum(int itemNum) {
		this.itemNum = itemNum;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getItemContent() {
		return itemcontent;
	}
	public void setItemContent(String itemcontent) {
		this.itemcontent = itemcontent;
	}
	@Override
	public String toString() {
		return "AdminVO [itemNum=" + itemNum + ", itemName=" + itemName + ", itemPrice=" + itemPrice + ", itemContent="
				+ itemcontent + "]";
	}

	
	
	
	
}
