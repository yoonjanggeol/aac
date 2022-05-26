package com.tjoeun.shoppingList;

public class ShoppingVO {
	private int idx;
	private String id;
	private String Name;
	private int iNum;
	private String iName;
	private int iPrice;
	private String iContent;
	private String iType;
	private String iImg;
	private int iCount;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getiNum() {
		return iNum;
	}
	public void setiNum(int iNum) {
		this.iNum = iNum;
	}
	public String getiName() {
		return iName;
	}
	public void setiName(String iName) {
		this.iName = iName;
	}
	public int getiPrice() {
		return iPrice;
	}
	public void setiPrice(int iPrice) {
		this.iPrice = iPrice;
	}
	public String getiContent() {
		return iContent;
	}
	public void setiContent(String iContent) {
		this.iContent = iContent;
	}
	public String getiType() {
		return iType;
	}
	public void setiType(String iType) {
		this.iType = iType;
	}
	public String getiImg() {
		return iImg;
	}
	public void setiImg(String iImg) {
		this.iImg = iImg;
	}
	public int getiCount() {
		return iCount;
	}
	public void setiCount(int iCount) {
		this.iCount = iCount;
	}
	@Override
	public String toString() {
		return "ShoppingVO [idx=" + idx + ", id=" + id + ", Name=" + Name + ", iNum=" + iNum + ", iName=" + iName
				+ ", iPrice=" + iPrice + ", iContent=" + iContent + ", iType=" + iType + ", iImg=" + iImg + ", iCount="
				+ iCount + "]";
	}
	public ShoppingVO(int idx, String id, String name, int iNum, String iName, int iPrice, String iContent,
			String iType, String iImg, int iCount) {
		super();
		this.idx = idx;
		this.id = id;
		Name = name;
		this.iNum = iNum;
		this.iName = iName;
		this.iPrice = iPrice;
		this.iContent = iContent;
		this.iType = iType;
		this.iImg = iImg;
		this.iCount = iCount;
	}
	
	public ShoppingVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
