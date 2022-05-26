package com.tjoeun.admin;

public class AdminVO {
	private int itemNum;
	private String itemName;
	private int itemPrice;
	private String itemContent;
	private String itemType;
	private String itemImg;
	
	public AdminVO() {
		// TODO Auto-generated constructor stub
	}

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

	public int getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}

	public String getItemContent() {
		return itemContent;
	}

	public void setItemContent(String itemContent) {
		this.itemContent = itemContent;
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
		return "AdminVO [itemNum=" + itemNum + ", itemName=" + itemName + ", itemPrice=" + itemPrice + ", itemContent="
				+ itemContent + ", itemType=" + itemType + ", itemImg=" + itemImg + "]";
	}

	public AdminVO(int itemNum, String itemName, int itemPrice, String itemContent, String itemType, String itemImg) {
		super();
		this.itemNum = itemNum;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.itemContent = itemContent;
		this.itemType = itemType;
		this.itemImg = itemImg;
	}
	
	
	
}
