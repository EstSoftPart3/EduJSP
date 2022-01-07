package com.erp.admin.business.partner.vo;

import common.base.vo.BaseVo;


// 3개 테이블 필드 모두 담겨있는 Value Object;
public class ErpPartnerVo extends BaseVo {
	
		// 협력사 정보를 수정할 경우에 관련된 협력사 매니저 협력사 파일의 사업자 등록번호 부터 변경한다. 그러므로 변경전 사업자 등록번호를 담는 VO 필요.. 
		String beforeUpdate;

		// 검색 옵셥 및 화면 이동 처리.
		int sq;
		String searchOption;
		String search;
		int count;
		int rnum;
		
		// 현재 페이지
		int curPage;
		
		int startRow;
		int endRow;
		int limit;
	
		// 협력사 정보 테이블
		int prtnSq;
		// 사업자 유형 코드 공통 코드..!
		//String codeComCd;
		String prtnTypCd;
		String codeNm;
		String prtnEnrlmNum;
		String prtnNm;
		String prtnRprsnNm;
		String prtnEtbDt;
		String prtnCrprtNum;
		String prtnLoc;
		String prtnBsnscon;
		String prtnSrvc;
		
		// 협력사 담당자 테이블
		int prtnMngrSq;
		// String prtnEnrlmNum;
		String prtnMngr1Dept;
		String prtnMngr1Rnk;
		String prtnMngr1Nm;
		String prtnMngr1RprsnPh;
		String prtnMngr1Ph;
		String prtnMngr1Eml;
		String prtnMngr2Dept;
		String prtnMngr2Rnk;
		String prtnMngr2Nm;
		String prtnMngr2RprsnPh;
		String prtnMngr2Ph;
		String prtnMngr2Eml;
		
		// 협력사 정보 파일 테이블 VO
		ErpPartnerFileVo erpPartnerFileVo;
		
		
		// 협력사 파일 테이블
		int prtnFileSq;
		// String prtnEnrlmNum;
		String oriFileNm;
		String saveFileNm;
		Long fileSize;
		String fileCrtDt;
		String fileUseYn;
		
		
		
		public ErpPartnerVo() { super(); }



		public String getBeforeUpdate() {
			return beforeUpdate;
		}



		public void setBeforeUpdate(String beforeUpdate) {
			this.beforeUpdate = beforeUpdate;
		}



		public int getSq() {
			return sq;
		}



		public void setSq(int sq) {
			this.sq = sq;
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



		public int getCount() {
			return count;
		}



		public void setCount(int count) {
			this.count = count;
		}



		public int getRnum() {
			return rnum;
		}



		public void setRnum(int rnum) {
			this.rnum = rnum;
		}



		public int getCurPage() {
			return curPage;
		}



		public void setCurPage(int curPage) {
			this.curPage = curPage;
		}



		public int getStartRow() {
			return startRow;
		}



		public void setStartRow(int startRow) {
			this.startRow = startRow;
		}



		public int getEndRow() {
			return endRow;
		}



		public void setEndRow(int endRow) {
			this.endRow = endRow;
		}



		public int getLimit() {
			return limit;
		}



		public void setLimit(int limit) {
			this.limit = limit;
		}



		public int getPrtnSq() {
			return prtnSq;
		}



		public void setPrtnSq(int prtnSq) {
			this.prtnSq = prtnSq;
		}



		public String getPrtnTypCd() {
			return prtnTypCd;
		}



		public void setPrtnTypCd(String prtnTypCd) {
			this.prtnTypCd = prtnTypCd;
		}



		public String getCodeNm() {
			return codeNm;
		}



		public void setCodeNm(String codeNm) {
			this.codeNm = codeNm;
		}



		public String getPrtnEnrlmNum() {
			return prtnEnrlmNum;
		}



		public void setPrtnEnrlmNum(String prtnEnrlmNum) {
			this.prtnEnrlmNum = prtnEnrlmNum;
		}



		public String getPrtnNm() {
			return prtnNm;
		}



		public void setPrtnNm(String prtnNm) {
			this.prtnNm = prtnNm;
		}



		public String getPrtnRprsnNm() {
			return prtnRprsnNm;
		}



		public void setPrtnRprsnNm(String prtnRprsnNm) {
			this.prtnRprsnNm = prtnRprsnNm;
		}



		public String getPrtnEtbDt() {
			return prtnEtbDt;
		}



		public void setPrtnEtbDt(String prtnEtbDt) {
			this.prtnEtbDt = prtnEtbDt;
		}



		public String getPrtnCrprtNum() {
			return prtnCrprtNum;
		}



		public void setPrtnCrprtNum(String prtnCrprtNum) {
			this.prtnCrprtNum = prtnCrprtNum;
		}



		public String getPrtnLoc() {
			return prtnLoc;
		}



		public void setPrtnLoc(String prtnLoc) {
			this.prtnLoc = prtnLoc;
		}



		public String getPrtnBsnscon() {
			return prtnBsnscon;
		}



		public void setPrtnBsnscon(String prtnBsnscon) {
			this.prtnBsnscon = prtnBsnscon;
		}



		public String getPrtnSrvc() {
			return prtnSrvc;
		}



		public void setPrtnSrvc(String prtnSrvc) {
			this.prtnSrvc = prtnSrvc;
		}



		public int getPrtnMngrSq() {
			return prtnMngrSq;
		}



		public void setPrtnMngrSq(int prtnMngrSq) {
			this.prtnMngrSq = prtnMngrSq;
		}



		public String getPrtnMngr1Dept() {
			return prtnMngr1Dept;
		}



		public void setPrtnMngr1Dept(String prtnMngr1Dept) {
			this.prtnMngr1Dept = prtnMngr1Dept;
		}



		public String getPrtnMngr1Rnk() {
			return prtnMngr1Rnk;
		}



		public void setPrtnMngr1Rnk(String prtnMngr1Rnk) {
			this.prtnMngr1Rnk = prtnMngr1Rnk;
		}



		public String getPrtnMngr1Nm() {
			return prtnMngr1Nm;
		}



		public void setPrtnMngr1Nm(String prtnMngr1Nm) {
			this.prtnMngr1Nm = prtnMngr1Nm;
		}



		public String getPrtnMngr1RprsnPh() {
			return prtnMngr1RprsnPh;
		}



		public void setPrtnMngr1RprsnPh(String prtnMngr1RprsnPh) {
			this.prtnMngr1RprsnPh = prtnMngr1RprsnPh;
		}



		public String getPrtnMngr1Ph() {
			return prtnMngr1Ph;
		}



		public void setPrtnMngr1Ph(String prtnMngr1Ph) {
			this.prtnMngr1Ph = prtnMngr1Ph;
		}



		public String getPrtnMngr1Eml() {
			return prtnMngr1Eml;
		}



		public void setPrtnMngr1Eml(String prtnMngr1Eml) {
			this.prtnMngr1Eml = prtnMngr1Eml;
		}



		public String getPrtnMngr2Dept() {
			return prtnMngr2Dept;
		}



		public void setPrtnMngr2Dept(String prtnMngr2Dept) {
			this.prtnMngr2Dept = prtnMngr2Dept;
		}



		public String getPrtnMngr2Rnk() {
			return prtnMngr2Rnk;
		}



		public void setPrtnMngr2Rnk(String prtnMngr2Rnk) {
			this.prtnMngr2Rnk = prtnMngr2Rnk;
		}



		public String getPrtnMngr2Nm() {
			return prtnMngr2Nm;
		}



		public void setPrtnMngr2Nm(String prtnMngr2Nm) {
			this.prtnMngr2Nm = prtnMngr2Nm;
		}



		public String getPrtnMngr2RprsnPh() {
			return prtnMngr2RprsnPh;
		}



		public void setPrtnMngr2RprsnPh(String prtnMngr2RprsnPh) {
			this.prtnMngr2RprsnPh = prtnMngr2RprsnPh;
		}



		public String getPrtnMngr2Ph() {
			return prtnMngr2Ph;
		}



		public void setPrtnMngr2Ph(String prtnMngr2Ph) {
			this.prtnMngr2Ph = prtnMngr2Ph;
		}



		public String getPrtnMngr2Eml() {
			return prtnMngr2Eml;
		}



		public void setPrtnMngr2Eml(String prtnMngr2Eml) {
			this.prtnMngr2Eml = prtnMngr2Eml;
		}



		public ErpPartnerFileVo getErpPartnerFileVo() {
			return erpPartnerFileVo;
		}



		public void setErpPartnerFileVo(ErpPartnerFileVo erpPartnerFileVo) {
			this.erpPartnerFileVo = erpPartnerFileVo;
		}



		public int getPrtnFileSq() {
			return prtnFileSq;
		}



		public void setPrtnFileSq(int prtnFileSq) {
			this.prtnFileSq = prtnFileSq;
		}



		public String getOriFileNm() {
			return oriFileNm;
		}



		public void setOriFileNm(String oriFileNm) {
			this.oriFileNm = oriFileNm;
		}



		public String getSaveFileNm() {
			return saveFileNm;
		}



		public void setSaveFileNm(String saveFileNm) {
			this.saveFileNm = saveFileNm;
		}



		public Long getFileSize() {
			return fileSize;
		}



		public void setFileSize(Long fileSize) {
			this.fileSize = fileSize;
		}



		public String getFileCrtDt() {
			return fileCrtDt;
		}



		public void setFileCrtDt(String fileCrtDt) {
			this.fileCrtDt = fileCrtDt;
		}



		public String getFileUseYn() {
			return fileUseYn;
		}



		public void setFileUseYn(String fileUseYn) {
			this.fileUseYn = fileUseYn;
		}



		public ErpPartnerVo(String beforeUpdate, int sq, String searchOption, String search, int count, int rnum,
				int curPage, int startRow, int endRow, int limit, int prtnSq, String prtnTypCd, String codeNm,
				String prtnEnrlmNum, String prtnNm, String prtnRprsnNm, String prtnEtbDt, String prtnCrprtNum,
				String prtnLoc, String prtnBsnscon, String prtnSrvc, int prtnMngrSq, String prtnMngr1Dept,
				String prtnMngr1Rnk, String prtnMngr1Nm, String prtnMngr1RprsnPh, String prtnMngr1Ph,
				String prtnMngr1Eml, String prtnMngr2Dept, String prtnMngr2Rnk, String prtnMngr2Nm,
				String prtnMngr2RprsnPh, String prtnMngr2Ph, String prtnMngr2Eml, ErpPartnerFileVo erpPartnerFileVo,
				int prtnFileSq, String oriFileNm, String saveFileNm, Long fileSize, String fileCrtDt,
				String fileUseYn) {
			super();
			this.beforeUpdate = beforeUpdate;
			this.sq = sq;
			this.searchOption = searchOption;
			this.search = search;
			this.count = count;
			this.rnum = rnum;
			this.curPage = curPage;
			this.startRow = startRow;
			this.endRow = endRow;
			this.limit = limit;
			this.prtnSq = prtnSq;
			this.prtnTypCd = prtnTypCd;
			this.codeNm = codeNm;
			this.prtnEnrlmNum = prtnEnrlmNum;
			this.prtnNm = prtnNm;
			this.prtnRprsnNm = prtnRprsnNm;
			this.prtnEtbDt = prtnEtbDt;
			this.prtnCrprtNum = prtnCrprtNum;
			this.prtnLoc = prtnLoc;
			this.prtnBsnscon = prtnBsnscon;
			this.prtnSrvc = prtnSrvc;
			this.prtnMngrSq = prtnMngrSq;
			this.prtnMngr1Dept = prtnMngr1Dept;
			this.prtnMngr1Rnk = prtnMngr1Rnk;
			this.prtnMngr1Nm = prtnMngr1Nm;
			this.prtnMngr1RprsnPh = prtnMngr1RprsnPh;
			this.prtnMngr1Ph = prtnMngr1Ph;
			this.prtnMngr1Eml = prtnMngr1Eml;
			this.prtnMngr2Dept = prtnMngr2Dept;
			this.prtnMngr2Rnk = prtnMngr2Rnk;
			this.prtnMngr2Nm = prtnMngr2Nm;
			this.prtnMngr2RprsnPh = prtnMngr2RprsnPh;
			this.prtnMngr2Ph = prtnMngr2Ph;
			this.prtnMngr2Eml = prtnMngr2Eml;
			this.erpPartnerFileVo = erpPartnerFileVo;
			this.prtnFileSq = prtnFileSq;
			this.oriFileNm = oriFileNm;
			this.saveFileNm = saveFileNm;
			this.fileSize = fileSize;
			this.fileCrtDt = fileCrtDt;
			this.fileUseYn = fileUseYn;
		}



		@Override
		public String toString() {
			return "ErpPartnerVo [beforeUpdate=" + beforeUpdate + ", sq=" + sq + ", searchOption=" + searchOption
					+ ", search=" + search + ", count=" + count + ", rnum=" + rnum + ", curPage=" + curPage
					+ ", startRow=" + startRow + ", endRow=" + endRow + ", limit=" + limit + ", prtnSq=" + prtnSq
					+ ", prtnTypCd=" + prtnTypCd + ", codeNm=" + codeNm + ", prtnEnrlmNum=" + prtnEnrlmNum + ", prtnNm="
					+ prtnNm + ", prtnRprsnNm=" + prtnRprsnNm + ", prtnEtbDt=" + prtnEtbDt + ", prtnCrprtNum="
					+ prtnCrprtNum + ", prtnLoc=" + prtnLoc + ", prtnBsnscon=" + prtnBsnscon + ", prtnSrvc=" + prtnSrvc
					+ ", prtnMngrSq=" + prtnMngrSq + ", prtnMngr1Dept=" + prtnMngr1Dept + ", prtnMngr1Rnk="
					+ prtnMngr1Rnk + ", prtnMngr1Nm=" + prtnMngr1Nm + ", prtnMngr1RprsnPh=" + prtnMngr1RprsnPh
					+ ", prtnMngr1Ph=" + prtnMngr1Ph + ", prtnMngr1Eml=" + prtnMngr1Eml + ", prtnMngr2Dept="
					+ prtnMngr2Dept + ", prtnMngr2Rnk=" + prtnMngr2Rnk + ", prtnMngr2Nm=" + prtnMngr2Nm
					+ ", prtnMngr2RprsnPh=" + prtnMngr2RprsnPh + ", prtnMngr2Ph=" + prtnMngr2Ph + ", prtnMngr2Eml="
					+ prtnMngr2Eml + ", erpPartnerFileVo=" + erpPartnerFileVo + ", prtnFileSq=" + prtnFileSq
					+ ", oriFileNm=" + oriFileNm + ", saveFileNm=" + saveFileNm + ", fileSize=" + fileSize
					+ ", fileCrtDt=" + fileCrtDt + ", fileUseYn=" + fileUseYn + "]";
		}

		



}
