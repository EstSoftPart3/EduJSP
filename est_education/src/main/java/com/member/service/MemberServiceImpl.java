package com.member.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.equipmentLental.dao.EquipmentLentalDao;
import com.equipmentLental.vo.EquipmentLentalVo;
import com.member.dao.MemberDao;
import com.member.vo.MemberCheckedVo;
import com.member.vo.MemberVo;
import com.project.dao.ProjectDao;
import com.project.vo.ProjectVo;

@Service(value = "memberService")
public class MemberServiceImpl implements MemberService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="memberDao")
	MemberDao memberDao;

	@Override
	public List<MemberVo> selectMemberList(MemberCheckedVo mbrVo) throws Exception {
		List<MemberVo> list = new ArrayList<MemberVo>();
		
		try {
			list = memberDao.selectMemberList(mbrVo);
		}catch(Exception e) {
			log.info("############## selectMemberList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	@Override
	public List<MemberVo> selectMemberList(List<Long> mbrSqArr) throws Exception {
		List<MemberVo> list = new ArrayList<MemberVo>();
		
		try {
			list = memberDao.selectMemberList(mbrSqArr);
		}catch(Exception e) {
			log.info("############## selectMemberList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}

	@Override
	public int insertMember(MemberVo mbrVo) throws Exception {
		
		int result = 0;
		try {
			result = memberDao.insertMember(mbrVo);
		} catch(Exception e) {
			log.info("############## insertMember Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	public MemberVo selectMemberOne(long sq) throws Exception {
		MemberVo mbr = new MemberVo();
		
		try {
			mbr = memberDao.selectMemberOne(sq);
		}catch(Exception e) {
			log.info("############## selectMemberOne Failed!!! [" + e.getMessage() + "]");
		}
		
		return mbr;
	}

	@Override
	public int updateMember(MemberVo mbrVo) throws Exception {
		int result = 0;
		
		try {
			result = memberDao.updateMember(mbrVo);
		} catch(Exception e) {
			log.info("############## updateMember Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	@Override
	public int updateLeaveDt(List<MemberVo> mbrVoList) throws Exception {
		int result = 0;
		
		try {
			result = memberDao.updateLeaveDt(mbrVoList);
		} catch(Exception e) {
			log.info("############## updateMember Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	public int deleteMember(long sq) throws Exception {
		int result = 0;
		
		try {
			result = memberDao.deleteMember(sq);
		} catch(Exception e) {
			log.info("############## deleteMember Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	/*@Override
	public List<CodeVo> selectcomCodeList(Map<String, String> codeData) throws Exception {
		// TODO Auto-generated method stub
		
		List<CodeVo> list = new ArrayList<CodeVo>();
		
		try {
				list = memberDao.selectcomCodeList(codeData);
		}catch(Exception e) {
			log.info("############## selectcomCodeList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}*/
	
	
	@Resource(name="projectDao")
	ProjectDao projectDao;

	public List<ProjectVo> selectProjectList(ProjectVo proVo) throws Exception {
		List<ProjectVo> list = new ArrayList<ProjectVo>();
		
		try {
			list = projectDao.selectProjectrList(proVo);
		}catch(Exception e) {
			log.info("############## selectProjectList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	
	@Resource(name = "equipmentLentalDao")EquipmentLentalDao equipmentLentalDao;
    public List<EquipmentLentalVo> selectEquipmentLentalList(EquipmentLentalVo EquipmentLentalVo)throws Exception {
        List < EquipmentLentalVo > list = new ArrayList<EquipmentLentalVo>();
        try {
            list = equipmentLentalDao.selectEquipmentLentalList(EquipmentLentalVo);
        } catch (Exception e) {
            log.info("############## selectEquipmentList Failed!!! [" + e.getMessage() + "]");
        }
        return list;
    }
}
