package com.partner.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.partner.vo.PartnerVo;

import common.dao.AbstractDAO;

@Repository("partnerDao")
public class PartnerDao extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<PartnerVo> selectPartnerList() throws Exception {
		
		List<PartnerVo> out = selectList("partner.selectPartnerList");
		
		return out;
	}
	
	@SuppressWarnings("unchecked")
	public List<PartnerVo> selectPartnerList(Map<String, String> searchData) throws Exception {
		
		List<PartnerVo> out = (List<PartnerVo>) selectList("partner.selectPartnerList", searchData);
		
		return out;
	}
	
	public PartnerVo selectPartnerOne(long sq) throws Exception {
		
		return (PartnerVo) selectOne("partner.selectPartnerOne", new Long(sq));
	}
	
	public int updatePartner(PartnerVo prtnVo) throws Exception {
		
		return (int) update("partner.updatePartner", prtnVo);
	}
	
	public int insertPartner(PartnerVo prtnVo) throws Exception {
		
		return (int) update("partner.insertPartner", prtnVo);
	}
	
	public int deletePartner(long sq) throws Exception {
		
		return (int) delete("partner.deletePartner", sq);
	}
}
