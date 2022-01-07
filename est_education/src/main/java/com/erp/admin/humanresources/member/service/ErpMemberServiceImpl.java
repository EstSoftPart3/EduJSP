package com.erp.admin.humanresources.member.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.erp.admin.humanresources.member.dao.ErpMemberDao;
import com.erp.admin.humanresources.member.vo.ErpMemberCareerVo;
import com.erp.admin.humanresources.member.vo.ErpMemberCertificationVo;
import com.erp.admin.humanresources.member.vo.ErpMemberDocumentVo;
import com.erp.admin.humanresources.member.vo.ErpMemberEducationVo;
import com.erp.admin.humanresources.member.vo.ErpMemberOAVo;
import com.erp.admin.humanresources.member.vo.ErpMemberVo;

@Service(value = "erpMemberService")
public class ErpMemberServiceImpl implements ErpMemberService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="erpMemberDao")
	ErpMemberDao memberDao;
	
	
	//get employ list
	@Override
	public List<ErpMemberVo> selectMemberList(ErpMemberVo mbrVo, int start, int end) throws Exception {
		List<ErpMemberVo> list = new ArrayList<ErpMemberVo>();
		try {
			list = memberDao.selectMemberList(mbrVo, start, end);
		}catch(Exception e) {
			log.info("############## selectMemberList Failed!!! [" + e.getMessage() + "]");
		}
		return list;
	}
	
	@Override
	public int countMemberList() throws Exception {
		return memberDao.countMemberList();
	}
	
// ############################################################### INSERT
	//get employ seq nextval
	@Override
	public int getSqNextval() throws Exception {
		return memberDao.getSqNextval();
	}
	
	//insert member
	@Override
	public int insertMember(ErpMemberVo erpMemberVo) throws Exception {
		try {
			memberDao.insertMember(erpMemberVo);
			return 1;
		} catch (Exception e) {
			log.info("############## insertMember Failed!!! [" + e.getMessage() + "]");
			return 0;
		}
	}
	
	//insert education
	@Override
	public int insertMemberEductn(List<ErpMemberEducationVo> eduList) throws Exception {
		try {
			for(int i=0; i<eduList.size(); i++) {
				memberDao.insertMemberEductn(eduList.get(i));
			}
			return 1;
		} catch (Exception e) {
			log.info("############## insertMemberEductn Failed!!! [" + e.getMessage() + "]");
			return 0;
		}
	}
	
	//insert carrer
	@Override
	public int insertMemberCarr(List<ErpMemberCareerVo> carrList) throws Exception {
		try {
			for(int i=0; i<carrList.size(); i++) {
				memberDao.insertMemberCarr(carrList.get(i));
			}
			return 1;
		} catch (Exception e) {
			log.info("############## insertMemberCarr Failed!!! [" + e.getMessage() + "]");
			return 0;
		}
	}

	//insert certification
	@Override
	public int insertMemberCertfctn(List<ErpMemberCertificationVo> certfList) throws Exception {
		try {
			for(int i=0; i<certfList.size(); i++) {
				memberDao.insertMemberCertfctn(certfList.get(i));
			}
			return 1;
		} catch (Exception e) {
			log.info("############## insertMemberCertfctn Failed!!! [" + e.getMessage() + "]");
			return 0;
		}
	}

	//insert OA
	@Override
	public int insertMemberOA(List<ErpMemberOAVo> OAList) throws Exception {
		try {
			for(int i=0; i<OAList.size(); i++) {
				memberDao.insertMemberOA(OAList.get(i));
			}
			return 1;
		} catch (Exception e) {
			log.info("############## insertMemberOA Failed!!! [" + e.getMessage() + "]");
			return 0;
		}
	}
	
	//insert doc
	@Override
	public int insertMemberDoc(List<ErpMemberDocumentVo> docList) throws Exception {
		try {
			for(int i=0; i<docList.size(); i++) {
				memberDao.insertMemberDoc(docList.get(i));
			}
			return 1;
		} catch (Exception e) {
			log.info("############## insertMemberDoc Failed!!! [" + e.getMessage() + "]");
			return 0;
		}
	}

	
// ############################################################### SELECT DETAIL
	//select detail
	@Override
	public ErpMemberVo selectMemberDetail(ErpMemberVo vo) throws Exception {
		ErpMemberVo mVo = new ErpMemberVo();
		try {
			 mVo = memberDao.selectMemberDetail(vo);
		}catch(Exception e) {
			log.info("############## selectMemberDetail Failed!!! [" + e.getMessage() + "]");
		}
		return mVo;
	}

	//select doc
	@Override
	public List<ErpMemberDocumentVo> selectMemberDoc(ErpMemberVo vo) throws Exception {
		List<ErpMemberDocumentVo> list = new ArrayList<ErpMemberDocumentVo>();
		try {
			list = memberDao.selectMemberDoc(vo);
		}catch(Exception e) {
			log.info("############## selectMemberDoc Failed!!! [" + e.getMessage() + "]");
		}
		return list;
	}

	//select edu
	@Override
	public List<ErpMemberEducationVo> selectMemberEdu(ErpMemberVo vo) throws Exception {
		List<ErpMemberEducationVo> list = new ArrayList<ErpMemberEducationVo>();
		try {
			list = memberDao.selectMemberEdu(vo);
		}catch(Exception e) {
			log.info("############## selectMemberEdu Failed!!! [" + e.getMessage() + "]");
		}
		return list;
	}

	//select carr
	@Override
	public List<ErpMemberCareerVo> selectMemberCarr(ErpMemberVo vo) throws Exception {
		List<ErpMemberCareerVo> list = new ArrayList<ErpMemberCareerVo>();
		try {
			list = memberDao.selectMemberCarr(vo);
		}catch(Exception e) {
			log.info("############## selectMemberCarr Failed!!! [" + e.getMessage() + "]");
		}
		return list;
	}

	//select certf
	@Override
	public List<ErpMemberCertificationVo> selectMemberCertf(ErpMemberVo vo) throws Exception {
		List<ErpMemberCertificationVo> list = new ArrayList<ErpMemberCertificationVo>();
		try {
			list = memberDao.selectMemberCertf(vo);
		}catch(Exception e) {
			log.info("############## selectMemberCertf Failed!!! [" + e.getMessage() + "]");
		}
		return list;
	}

	//select oa
	@Override
	public List<ErpMemberOAVo> selectMemberOA(ErpMemberVo vo) throws Exception {
		List<ErpMemberOAVo> list = new ArrayList<ErpMemberOAVo>();
		try {
			list = memberDao.selectMemberOA(vo);
		}catch(Exception e) {
			log.info("############## selectMemberOA Failed!!! [" + e.getMessage() + "]");
		}
		return list;
	}
	
// ############################################################### DELETE
	@Override
	public int deleteMember(List<Integer> list) throws Exception {
		int cnt = 0;
		try {
			for(int i=0; i<list.size(); i++) {
				cnt += memberDao.deleteMember(list.get(i));
			}
		}catch(Exception e) {
			log.info("############## deleteMember Failed!!! [" + e.getMessage() + "]");
		}
		
		if(cnt!=0) {
			return 1;
		}else {
			return 0;
		}
	}
	
// ############################################################### SELEC FILE FOR DOWNLOAD
	@Override
	public Map<String, Object> selectFileInfo(int DOC_SQ) throws Exception {
		return memberDao.selectFileInfo(DOC_SQ);
	}
	
// ############################################################### UPDATE MEMBER
	//update member
	@Override
	public int updateMember(ErpMemberVo erpMemberVo) throws Exception {
		try {
			 memberDao.updateMember(erpMemberVo);
			 return 1;
		}catch(Exception e) {
			log.info("############## updateMember Failed!!! [" + e.getMessage() + "]");
		}
		return 0;
	}

	//update edu
	@Override
	public int deleteMemberEductn(int emplysq) throws Exception {
		try {
			memberDao.deleteMemberEductn(emplysq);
		} catch (Exception e) {
			log.info("############## deleteMemberEductn Failed!!! [" + e.getMessage() + "]");
		}
		return 1;
	}

	//update carr
	@Override
	public int deleteMemberCarr(int emplysq) throws Exception {
		try {
			memberDao.deleteMemberCarr(emplysq);
		} catch (Exception e) {
			log.info("############## deleteMemberCarr Failed!!! [" + e.getMessage() + "]");
		}
		return 1;
	}

	//update certf
	@Override
	public int deleteMemberCertfctn(int emplysq) throws Exception {
		try {
				memberDao.deleteMemberCertfctn(emplysq);
		} catch (Exception e) {
			log.info("############## deleteMemberCertfctn Failed!!! [" + e.getMessage() + "]");
		}
		return 1;
	}

	//update oa
	@Override
	public int deleteMemberOA(int emplysq) throws Exception {
		try {
				memberDao.deleteMemberOA(emplysq);
		} catch (Exception e) {
			log.info("############## deleteMemberOA Failed!!! [" + e.getMessage() + "]");
		}
		return 1;
	}
	
	

	//update doc
	@Override
	public int updateMemberDoc(List<ErpMemberDocumentVo> docList) throws Exception {
		try {
			for(int i=0; i<docList.size(); i++) {
				memberDao.updateMemberDoc(docList.get(i));
			}
			return 1;
		} catch (Exception e) {
			log.info("############## updateMemberDoc Failed!!! [" + e.getMessage() + "]");
			return 0;
		}
	}

	
}
