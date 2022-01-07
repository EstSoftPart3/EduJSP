package com.equipment.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.equipment.dao.EquipmentDao;
import com.equipment.vo.EquipmentVo;

@Service(value="equipmentService")
public class EquipmentServiceImpl implements EquipmentService{
	
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name="equipmentDao")
	EquipmentDao equipmentDao;
	
	@Override 
	public List<EquipmentVo> selectEquipmentList(EquipmentVo equipmentVo) throws Exception {
		List<EquipmentVo> list = new ArrayList<EquipmentVo>();
		
		try {
			list = equipmentDao.selectEquipmentList(equipmentVo);
		}catch(Exception e) {
			log.info("############## selectEquipmentList Failed!!! [" + e.getMessage() + "]");
		}
		return list;
	}

	@Override
	public int insertEquipment(EquipmentVo equipmentVo) throws Exception {
		int result=0;
		try {
			result = equipmentDao.insertEquipment(equipmentVo);
		}catch(Exception e) {
			log.info("############## insertEquipmentList Failed!!! [" + e.getMessage() + "]");
		}
		return result;
	}

	@Override
	public EquipmentVo selectEquipmentOnly(String eqpmntSq) throws Exception {
		
		EquipmentVo only= equipmentDao.selectEquipmentInfo(eqpmntSq);
		
		return only;
	}

	@Override
	public int deleteEquipment(String eqpmntSq) throws Exception {
		int result =0;
		try {
			result=equipmentDao.deleteEquipment(eqpmntSq);
		}catch(Exception e) {
			log.info("############## deleteEquipmentList Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	public int deleteEquipmentAll(List<EquipmentVo> eqpmntSq) throws Exception {
		int result = 0;
		try {
			result = equipmentDao.deleteEquipmentAll(eqpmntSq);
		}catch(Exception e) {
			log.info("############## deleteEquipmentAll Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	public int updateEquipment(EquipmentVo equipmentVo) throws Exception {
		int result=0;
		
		try {
			result = equipmentDao.updateEquipment(equipmentVo);
		}catch(Exception e) {
			log.info("############## updateEquipment Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	

	

	

}
