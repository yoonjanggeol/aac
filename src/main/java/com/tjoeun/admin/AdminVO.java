package com.tjoeun.admin;

public class AdminVO {
	private int itemNum;
	private String itemName;
	private String itemPrice;
	private String itemcontent;
	private String itemType;
	private String itemImg;
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
	public String getItemcontent() {
		return itemcontent;
	}
	public void setItemcontent(String itemcontent) {
		this.itemcontent = itemcontent;
	}
	public String getItemType() {
		return itemType;
	}
	public void setItemType(String itemType) {
		this.itemType = itemType;
	}
	public String getItemImg() {
		return itemImg;
	}
	public void setItemImg(String itemImg) {
		this.itemImg = itemImg;
	}
	
	@Override
	public String toString() {
		return "AdminVO [itemNum=" + itemNum + ", itemName=" + itemName + ", itemPrice=" + itemPrice + ", itemcontent="
				+ itemcontent + ", itemType=" + itemType + ", itemImg=" + itemImg + "]";
	}
	
	
}
