package com.erp.admin.management.equipment.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.erp.admin.management.equipment.vo.ErpEquipmentVo;
import com.erp.admin.management.equipment.dao.ErpEquipmentDao;

@Service(value="ErpEquipmentService")
public class ErpEquipmentServiceImpl implements ErpEquipmentService{
	
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name="ErpEquipmentDao")
	ErpEquipmentDao ErpEquipmentDao;
	
	@Override 
	public List<ErpEquipmentVo> selectEquipmentList(ErpEquipmentVo erpEquipmentVo) throws Exception {
		List<ErpEquipmentVo> list = new ArrayList<ErpEquipmentVo>();
		
		try {
			list = ErpEquipmentDao.selectEquipmentList(erpEquipmentVo);
		}catch(Exception e) {
			log.info("############## selectEquipmentList Failed!!! [" + e.getMessage() + "]");
		}
		return list;
	}
	/*
	public List<ErpEquipmentVo> selectEquipmentPagingList(int start, int end) throws Exception {
		List<ErpEquipmentVo> list = new ArrayList<ErpEquipmentVo>();

		try {	
			list = ErpEquipmentDao.selectEquipmentPagingList(start, end);
		} catch (Exception e) {
			log.info("############## sampleBoardPagingList Failed!!!! [" + e.getMessage() + "]");
		}finally {

		}	

		return list;
}*/
	
	//샘플 게시판 리스트 목록 + 페이징
	@SuppressWarnings("unchecked")
	public List<ErpEquipmentVo> selectEquipmentPagingList(int start, int end, ErpEquipmentVo erpEquipmentVo) throws Exception{
			
		List<ErpEquipmentVo> list = new ArrayList<ErpEquipmentVo>();

		try {	
			list = ErpEquipmentDao.selectEquipmentPagingList(start, end, erpEquipmentVo);
		} catch (Exception e) {
			log.info("############## sampleBoardPagingList Failed!!!! [" + e.getMessage() + "]");
		}finally {
			System.out.println("첫 페이지 값 : " + start + "끝 값 : " + end);
		}
		
		return list;
	}
	
	@Override
	public int insertEquipment(ErpEquipmentVo erpEquipmentVo) throws Exception {
		int result=0;
		try {
			result = ErpEquipmentDao.insertEquipment(erpEquipmentVo);
		}catch(Exception e) {
			log.info("############## insertEquipmentList Failed!!! [" + e.getMessage() + "]");
		}
		return result;
	}

	@Override
	public ErpEquipmentVo selectEquipmentOnly(String eqpmntSq) throws Exception {
		
		ErpEquipmentVo only= ErpEquipmentDao.selectEquipmentInfo(eqpmntSq);
		
		return only;
	}

	@Override
	public int deleteEquipment(String eqpmntSq) throws Exception {
		int result =0;
		try {
			result=ErpEquipmentDao.deleteEquipment(eqpmntSq);
		}catch(Exception e) {
			log.info("############## deleteEquipmentList Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	public int deleteEquipmentAll(List<ErpEquipmentVo> eqpmntSq) throws Exception {
		int result = 0;
		try {
			result = ErpEquipmentDao.deleteEquipmentAll(eqpmntSq);
		}catch(Exception e) {
			log.info("############## deleteEquipmentAll Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	public int updateEquipment(ErpEquipmentVo erpEquipmentVo) throws Exception {
		int result=0;
		
		try {
			result = ErpEquipmentDao.updateEquipment(erpEquipmentVo);
		}catch(Exception e) {
			log.info("############## updateEquipment Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

		//게시판 총 갯수	
	@Override
	public int selectEquipmentCount(ErpEquipmentVo erpEquipmentVo) throws Exception  {
		
	    return ErpEquipmentDao.selectEquipmentCount(erpEquipmentVo);
	}

	
	
		@Override
	public List<ErpEquipmentVo> selectEquipmentLentalOne(ErpEquipmentVo erpEquipmentVo) throws Exception {
		
			List<ErpEquipmentVo> rentalDetail = new ArrayList<ErpEquipmentVo>();
		
		try {
			rentalDetail = ErpEquipmentDao.selectEquipmentLentalOne(erpEquipmentVo);
		}catch(Exception e) {
			log.info("############## sampleBoardReplyList Failed!!! [" + e.getMessage() + "]");
		}
		
		return rentalDetail;
	}

	

}	

	

	

	

