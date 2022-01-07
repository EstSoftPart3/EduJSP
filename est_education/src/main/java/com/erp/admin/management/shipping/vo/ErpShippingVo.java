package com.erp.admin.management.shipping.vo;


import common.base.vo.BaseVo;

public class ErpShippingVo extends BaseVo {
	
	int shpngSq; // 번호
	String shpngRcpnt; // 수령인
	String shpngShop; // 구매처
	String shpngShopPhneNmbr; // 구매처 전화번호
	String shpngGoods; // 배송 상품
	int shpngCount; // 개수
	int shpngCountAmnt; // 개당 가격
	int shpngAllAmnt; // 전체 가격
	String shpngPymntStts; // 결제 상태
	String shpngDate; // 현재 날짜
	String shpngPymntDate; // 결제 날짜
	String shpngPymntMthd; // 결제 방식
	String shpngOrgn; // 출발지
	String shpngDstnt; // 도착지
	String shpngContent; // 비고
	
	// 검색어 기능 구현을 위한 부분
	String searchOption; // 검색옵션
	String search; // 검색
	String startDt; // 시작 날짜
	String endDt; // 종료 날짜
	

	public ErpShippingVo() {} // 기본 생성자

	public int getShpngSq() {
		return shpngSq;
	}

	// getter setter
	public String getShpngRcpnt() {
		return shpngRcpnt;
	}

	public void setShpngRcpnt(String shpngRcpnt) {
		this.shpngRcpnt = shpngRcpnt;
	}

	public String getShpngShop() {
		return shpngShop;
	}

	public void setShpngShop(String shpngShop) {
		this.shpngShop = shpngShop;
	}

	public String getShpngShopPhneNmbr() {
		return shpngShopPhneNmbr;
	}

	public void setShpngShopPhneNmbr(String shpngShopPhneNmbr) {
		this.shpngShopPhneNmbr = shpngShopPhneNmbr;
	}

	public String getShpngGoods() {
		return shpngGoods;
	}

	public void setShpngGoods(String shpngGoods) {
		this.shpngGoods = shpngGoods;
	}

	public int getShpngCount() {
		return shpngCount;
	}

	public void setShpngCount(int shpngCount) {
		this.shpngCount = shpngCount;
	}

	public int getShpngCountAmnt() {
		return shpngCountAmnt;
	}

	public void setShpngCountAmnt(int shpngCountAmnt) {
		this.shpngCountAmnt = shpngCountAmnt;
	}

	public int getShpngAllAmnt() {
		return shpngAllAmnt;
	}

	public void setShpngAllAmnt(int shpngAllAmnt) {
		this.shpngAllAmnt = shpngAllAmnt;
	}

	public String getShpngPymntStts() {
		return shpngPymntStts;
	}

	public void setShpngPymntStts(String shpngPymntStts) {
		this.shpngPymntStts = shpngPymntStts;
	}

	public String getShpngDate() {
		return shpngDate;
	}

	public void setShpngDate(String shpngDate) {
		this.shpngDate = shpngDate;
	}

	public String getShpngPymntDate() {
		return shpngPymntDate;
	}

	public void setShpngPymntDate(String shpngPymntDate) {
		this.shpngPymntDate = shpngPymntDate;
	}

	public String getShpngPymntMthd() {
		return shpngPymntMthd;
	}

	public void setShpngPymntMthd(String shpngPymntMthd) {
		this.shpngPymntMthd = shpngPymntMthd;
	}

	public String getShpngOrgn() {
		return shpngOrgn;
	}

	public void setShpngOrgn(String shpngOrgn) {
		this.shpngOrgn = shpngOrgn;
	}

	public String getShpngDstnt() {
		return shpngDstnt;
	}

	public void setShpngDstnt(String shpngDstnt) {
		this.shpngDstnt = shpngDstnt;
	}

	public String getShpngContent() {
		return shpngContent;
	}

	public void setShpngContent(String shpngContent) {
		this.shpngContent = shpngContent;
	}

	public String getSearchOption() {
		return searchOption;
	}

	public void setSearchOption(String searchOption) {
		this.searchOption = searchOption;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getStartDt() {
		return startDt;
	}

	public void setStartDt(String startDt) {
		this.startDt = startDt;
	}

	public String getEndDt() {
		return endDt;
	}

	public void setEndDt(String endDt) {
		this.endDt = endDt;
	}

	public void setShpngSq(int shpngSq) {
		this.shpngSq = shpngSq;
	}

	// toString
	@Override
	public String toString() {
		return "ErpShippingVo [shpngSq=" + shpngSq + ", shpngRcpnt=" + shpngRcpnt + ", shpngShop=" + shpngShop
				+ ", shpngShopPhneNmbr=" + shpngShopPhneNmbr + ", shpngGoods=" + shpngGoods + ", shpngCount="
				+ shpngCount + ", shpngCountAmnt=" + shpngCountAmnt + ", shpngAllAmnt=" + shpngAllAmnt
				+ ", shpngPymntStts=" + shpngPymntStts + ", shpngDate=" + shpngDate + ", shpngPymntDate="
				+ shpngPymntDate + ", shpngPymntMthd=" + shpngPymntMthd + ", shpngOrgn=" + shpngOrgn + ", shpngDstnt="
				+ shpngDstnt + ", shpngContent=" + shpngContent + ", searchOption=" + searchOption + ", search="
				+ search + ", startDt=" + startDt + ", endDt=" + endDt + "]";
	}

	// using fields..
	public ErpShippingVo(int shpngSq, String shpngRcpnt, String shpngShop, String shpngShopPhneNmbr, String shpngGoods,
			int shpngCount, int shpngCountAmnt, int shpngAllAmnt, String shpngPymntStts, String shpngDate,
			String shpngPymntDate, String shpngPymntMthd, String shpngOrgn, String shpngDstnt, String shpngContent,
			String searchOption, String search, String startDt, String endDt) {
		super();
		this.shpngSq = shpngSq;
		this.shpngRcpnt = shpngRcpnt;
		this.shpngShop = shpngShop;
		this.shpngShopPhneNmbr = shpngShopPhneNmbr;
		this.shpngGoods = shpngGoods;
		this.shpngCount = shpngCount;
		this.shpngCountAmnt = shpngCountAmnt;
		this.shpngAllAmnt = shpngAllAmnt;
		this.shpngPymntStts = shpngPymntStts;
		this.shpngDate = shpngDate;
		this.shpngPymntDate = shpngPymntDate;
		this.shpngPymntMthd = shpngPymntMthd;
		this.shpngOrgn = shpngOrgn;
		this.shpngDstnt = shpngDstnt;
		this.shpngContent = shpngContent;
		this.searchOption = searchOption;
		this.search = search;
		this.startDt = startDt;
		this.endDt = endDt;
	}


	
}


