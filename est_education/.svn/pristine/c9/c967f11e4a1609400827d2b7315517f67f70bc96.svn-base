package com.partner.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.partner.dao.PartnerDao;
import com.partner.vo.PartnerVo;

@Service(value = "partnerService")
public class PartnerServiceImpl implements PartnerService {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="partnerDao")
	PartnerDao partnerDao;
	
	// 협력사 리스트 출력
	@Override
	public List<PartnerVo> selectPartnerList() throws Exception {
		// TODO Auto-generated method stub
		
		List<PartnerVo> list = new ArrayList<PartnerVo>();
		
		try {
			
			list = partnerDao.selectPartnerList();
		} catch (Exception e) {
			// TODO: handle exception
			
			log.info("############## selectPartnerList Failed!!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}

	// 사업자 유형에 따른 협력사 리스트 출력
	@Override
	public List<PartnerVo> selectPartnerList(Map<String, String> searchData) throws Exception {
		// TODO Auto-generated method stub
		
		List<PartnerVo> list = new ArrayList<PartnerVo>();
		
		try {
			
			list = partnerDao.selectPartnerList(searchData);
		} catch (Exception e) {
			// TODO: handle exception
			
			log.info("selectPartnerList Exception for PartnerService ( "+e.getMessage()+" )");
		}
		
		return list;
	}

	@Override
	public PartnerVo selectPartnerOne(long sq) throws Exception {
		// TODO Auto-generated method stub
		
		PartnerVo prtnVo = new PartnerVo();
		
		try {
			
			prtnVo = partnerDao.selectPartnerOne(sq);
		} catch (Exception e) {
			// TODO: handle exception
			log.info("selectPartnerOne Exception for PartnerService ( "+e.getMessage()+" )");
		}
		
		return prtnVo;
	}

	@Override
	public int updatePartner(PartnerVo prtnVo) throws Exception {
		// TODO Auto-generated method stub
		
		int result = 0;
		
		try {
			
			result = partnerDao.updatePartner(prtnVo);
		} catch (Exception e) {
			// TODO: handle exception
			
			log.info("updatePartner Exception for PartnerService ( "+e.getMessage()+" )");
		}
		
		return result;
	}

	@Override
	public int insertPartner(PartnerVo prtnVo) throws Exception {
		// TODO Auto-generated method stub
		
		int result = 0;
		
		try {
			
			result = partnerDao.insertPartner(prtnVo);
		} catch (Exception e) {
			// TODO: handle exception
			
			log.info("insertPartner Exception for PartnerService ( "+e.getMessage()+" )");
		}
		
		return result;
	}

	@Override
	public int deletePartner(long sq) throws Exception {
		// TODO Auto-generated method stub
		
		int result = 0;
		
		try {
			
			result = partnerDao.deletePartner(sq);
		} catch (Exception e) {
			// TODO: handle exception
			
			log.info("deletePartner Exception for PartnerService ( "+e.getMessage()+" )");
		}
		
		return result;
	}

}
