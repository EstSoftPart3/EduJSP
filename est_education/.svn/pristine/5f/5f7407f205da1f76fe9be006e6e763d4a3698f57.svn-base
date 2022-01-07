package com.erp.admin.business.partner.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.erp.admin.business.partner.vo.ErpPartnerFileVo;
import com.erp.admin.business.partner.vo.ErpPartnerVo;

import common.dao.AbstractDAO;

@Repository("erpPartnerDao")
public class ErpPartnerDao extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<ErpPartnerVo> selectPartnerList() throws Exception {
		
		List<ErpPartnerVo> out = selectList("erpPartner.selectPartnerList");
		
		return out;
	}
	
	@SuppressWarnings("unchecked")
	public List<ErpPartnerVo> selectPartnerList(Map<String, String> searchData) {
		
		List<ErpPartnerVo> out = selectList("erpPartner.selectPartnerList", searchData);
		
		return out;
	}
	
	public int insertPartner(ErpPartnerVo erpPartnerVo) throws Exception {
		
		return (int) insert("erpPartner.insertPartner", erpPartnerVo);
	}

	@SuppressWarnings("unchecked")
	public List<ErpPartnerVo> selectPartnerPagingList(ErpPartnerVo erpPartnerVo) {
		
		return selectList("erpPartner.selectPartnerPagingList", erpPartnerVo);
	}
	
	@SuppressWarnings("unchecked")
	public List<ErpPartnerVo> selectPartnerPagingList(Map<String, Object> searchData) {
		
		return selectList("erpPartner.selectPartnerPagingList", searchData);
	}

	@SuppressWarnings("unchecked")
	public List<ErpPartnerFileVo> selectFileList(ErpPartnerVo erpPartnerVo) {
		
		List<ErpPartnerFileVo> out = selectList("erpPartner.selectFileList", erpPartnerVo);
		
		return out;
	}
	
	public ErpPartnerVo selectPartnerOne(ErpPartnerVo erpPartnerVo) {
		
		return (ErpPartnerVo) selectOne("erpPartner.selectPartner", erpPartnerVo);
		
	}

	public int deletePartner(ErpPartnerVo erpPartnerVo) {
		
		return (int) delete("erpPartner.deletePartner", erpPartnerVo);
	}

	public int insertFile(ErpPartnerVo erpPartnerVo) {
		
		return (int) insert("erpPartner.insertPartnerFile", erpPartnerVo);
	}

	public ErpPartnerVo isFileExist(ErpPartnerVo erpPartnerVo) {
		
		return (ErpPartnerVo) selectOne("erpPartner.selectFileExist", erpPartnerVo);
		
	}

	public int deleteAllPartnerFile(ErpPartnerVo erpPartnerVo) {
		
		return (int) update("erpPartner.deleteAllPartnerFile", erpPartnerVo);
	}

	public int deletePartnerFile(ErpPartnerVo erpPartnerVo) {
		
		return (int) update("erpPartner.deletePartnerFile",erpPartnerVo);
	}

	public int deleteSecondMngr(ErpPartnerVo erpPartnerVo) {
		
		return (int) update("erpPartner.deleteSecondMngr", erpPartnerVo);
	}

	public int updatePartner(ErpPartnerVo erpPartnerVo) {
		return (int) update("erpPartner.updatePartner", erpPartnerVo);
	}

	public ErpPartnerVo selectSearchCount(ErpPartnerVo erpPartnerVo) {
		
		return (ErpPartnerVo) selectOne("erpPartner.selectSearchCount",erpPartnerVo);
	}

	public void updateReferencedRow(ErpPartnerVo erpPartnerVo) {
		
		update("erpPartner.updateReferencedRow", erpPartnerVo);
	}

	public ErpPartnerVo selectPrtnEnrlmNum(ErpPartnerVo erpPartnerVo) {
		
		return (ErpPartnerVo) selectOne("erpPartner.selectPrtnEnrlmNum",erpPartnerVo);
	}

	public ErpPartnerVo checkDuplicate(ErpPartnerVo erpPartnerVo) {
		
		return (ErpPartnerVo) selectOne("erpPartner.checkDuplicate",erpPartnerVo);
	}

}
