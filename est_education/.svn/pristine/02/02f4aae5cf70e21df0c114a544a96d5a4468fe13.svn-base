package com.erp.admin.business.partner.service;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.erp.admin.business.partner.dao.ErpPartnerDao;
import com.erp.admin.business.partner.util.FileUtils;
import com.erp.admin.business.partner.vo.ErpPartnerFileVo;
import com.erp.admin.business.partner.vo.ErpPartnerVo;

@Service(value="erpPartnerService")
public class ErpPartnerServiceImpl implements ErpPartnerService {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="erpPartnerDao")
	ErpPartnerDao erpPartnerDao;

	@Override
	public List<ErpPartnerVo> selectPartnerList(Map<String, String> searchData) {
		
		List<ErpPartnerVo> list = new ArrayList<ErpPartnerVo>();
		
		try {
			list = erpPartnerDao.selectPartnerList(searchData);
		} catch (Exception e) {
			log.info("############### erpPartnerService.selectPartnerSearchList Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return list;
	}

	@Override
	public List<ErpPartnerVo> selectPartnerPagingList(ErpPartnerVo erpPartnerVo) {
		
		List<ErpPartnerVo> list = new ArrayList<ErpPartnerVo>();
		
		try {
			list = erpPartnerDao.selectPartnerPagingList(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.selectPartnerPagingList Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return list;
	}
	
	@Override
	public List<ErpPartnerVo> selectPartnerPagingList(Map<String, Object> searchData) {
		
		List<ErpPartnerVo> list = new ArrayList<ErpPartnerVo>();
		
		try {
			list = erpPartnerDao.selectPartnerPagingList(searchData);
		} catch (Exception e) {
			log.info("############### erpPartnerService.selectPartnerPagingList Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return list;
	}

	@Override
	public int insertPartner(ErpPartnerVo erpPartnerVo) {
		
		int result  = 0;
		
		try {
			result = erpPartnerDao.insertPartner(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.insertPartner Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return result;
	}
	

	@Override
	public ErpPartnerVo selectPartnerOne(ErpPartnerVo erpPartnerVo) {
		
		ErpPartnerVo OnePartner = new ErpPartnerVo();
		
		try {
		OnePartner = erpPartnerDao.selectPartnerOne(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.selectPartnerOne Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		
		return OnePartner;
	}
	
	@Override
	public List<ErpPartnerFileVo> selectPartnerFile(ErpPartnerVo erpPartnerVo) {
		
		List<ErpPartnerFileVo> fileList = new ArrayList<ErpPartnerFileVo>();
		
		try {
			fileList = erpPartnerDao.selectFileList(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.selectPartnerFile Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return fileList;
	}
	
	
	@Override
	public int deletePartner(ErpPartnerVo erpPartnerVo) {
		
		int result = 0;
		
		try {
		result = erpPartnerDao.deletePartner(erpPartnerVo);
		}catch (Exception e) {
			log.info("############### erpPartnerService.deletePartner Failed!!!! ["+e.getMessage()+"]");
		}finally {
			
		}
		
		return result;
	}
	
	@Override
	public int uploadAndInsertFile(MultipartHttpServletRequest multipartHttpServletRequest, ErpPartnerVo erpPartnerVo) {
		
		FileUtils fileUtils = new FileUtils();
		
		int result = 0;
		
		try {
			List<Map<String,Object>> uploadFileList = fileUtils.parseInsertFileInfo(erpPartnerVo, multipartHttpServletRequest);
			for(int i=0;i<uploadFileList.size();i++) {
				
				erpPartnerVo.setPrtnEnrlmNum((String) uploadFileList.get(i).get("prtnEnrlmNum"));
				erpPartnerVo.setOriFileNm((String) uploadFileList.get(i).get("oriFileNm"));
				erpPartnerVo.setSaveFileNm((String) uploadFileList.get(i).get("saveFileNm"));
				erpPartnerVo.setFileSize((Long) uploadFileList.get(i).get("fileSize"));
				erpPartnerVo.setFileUseYn((String) uploadFileList.get(i).get("fileUseYn"));
				
				result = erpPartnerDao.insertFile(erpPartnerVo);
			}
		} catch (Exception e) {
			log.info("############### erpPartnerService.uploadAndInsertFile Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return result;
	}
	
	@Override
	public ErpPartnerVo isFileExist(ErpPartnerVo erpPartnerVo) {
		
		ErpPartnerVo isFileExist = new ErpPartnerVo();
		
		try {
			isFileExist = erpPartnerDao.isFileExist(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.isFileExist Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return isFileExist;
	}

	@Override
	public int deleteAllPartnerFile(ErpPartnerVo erpPartnerVo) {
		
		int result = 0;
		
		try {
			result = erpPartnerDao.deleteAllPartnerFile(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.deleteAllPartnerFile Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return result;
	}

	@Override
	public int deletePartnerFile(ErpPartnerVo erpPartnerVo) {
		
		int result = 0;
		
		try {
			result = erpPartnerDao.deletePartnerFile(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.deletePartnerFile Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return result;
	}

	@Override
	public int deleteSecondMngr(ErpPartnerVo erpPartnerVo) {
		
		int result = 0;
		
		try {
			result = erpPartnerDao.deleteSecondMngr(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.deleteSecondMngr Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return result;
	}

	@Override
	public int updatePartner(ErpPartnerVo erpPartnerVo) {
		
		int result = 0;
		
		try {
			result = erpPartnerDao.updatePartner(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.updatePartner Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return result;
	}

	@Override
	public int selectSearchCount(ErpPartnerVo erpPartnerVo) {
		
		ErpPartnerVo resultType = new ErpPartnerVo();
		
		int result = 0;
		
		try {
			resultType = erpPartnerDao.selectSearchCount(erpPartnerVo);
			
			result = resultType.getPrtnSq();
			System.out.println("selectSearchCount.result"+result);
		} catch (Exception e) {
			log.info("############### erpPartnerService.selectSearchCount Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return result;
	}

	@Override
	public void downloadFile(ErpPartnerVo erpPartnerVo, HttpServletResponse response) {
		
		
		FileUtils fileUtils = new FileUtils();
		
		String msg = fileUtils.downloadFile(erpPartnerVo, response);
		
		if(msg != "") {
			
			log.info(msg);
		}
		
	}
	
	@Override
	public List<ErpPartnerVo> selectPartnerList() {
		
		List<ErpPartnerVo> list = new ArrayList<ErpPartnerVo>();
		
		try {
			list = erpPartnerDao.selectPartnerList();
		} catch (Exception e) {
			log.info("############### erpPartnerService.selectPartnerList Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return list;
	}

	@Override
	public void updateReferencedRow(ErpPartnerVo erpPartnerVo) {
		try {
			erpPartnerDao.updateReferencedRow(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.updateReferencedRow Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
	}

	@Override
	public ErpPartnerVo selectPrtnEnrlmNum(ErpPartnerVo erpPartnerVo) {
		
		ErpPartnerVo prtnEnrlmNum = new ErpPartnerVo();
		
		try {
			prtnEnrlmNum = erpPartnerDao.selectPrtnEnrlmNum(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.selectPrtnEnrlmNum Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		return prtnEnrlmNum;
	}

	@Override
	public ErpPartnerVo checkDuplicate(ErpPartnerVo erpPartnerVo) {
		
		ErpPartnerVo checkDuplicate = new ErpPartnerVo();
		
		try {
			checkDuplicate = erpPartnerDao.checkDuplicate(erpPartnerVo);
		} catch (Exception e) {
			log.info("############### erpPartnerService.checkDuplicate Failed!!!! ["+e.getMessage()+"]");
		} finally {
			
		}
		
		return checkDuplicate;
	}

}
