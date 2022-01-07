package com.erp.admin.business.partner.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.erp.admin.business.partner.vo.ErpPartnerVo;

@Component("partnerFileUtils")
public class FileUtils {
	// 저장 위치
	private static final String filePath = "C:\\SpringProject\\fileStorage\\SampleBoard";
	
	public List<Map<String,Object>> parseInsertFileInfo(
			ErpPartnerVo erpPartnerVo, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
		
		// 파일 이름 들을 String 타입의 반복 수행 클래스에 담아 저장.
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		
		// 업로드할 파일, 파일원본이름, 확장자명(jpg,pdf...), 저장할 파일 이름.
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;

		// 파라미터를 Map 형태로 담을 객체.
		Map<String, Object> listMap = null;
		
		// 최종 리턴
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		// 파일 테이블에 담을 사업자 등록번호.
		String prtnEnrlmNum = erpPartnerVo.getPrtnEnrlmNum();
		
		// 업로드할 폴더 오픈.
		File file = new File(filePath);
		
		// 해당 경로 폴더 존재하지 않는다면 폴더 생성.
		if(file.exists() == false) {
			file.mkdir();
		}
		
		while(iterator.hasNext()) {
			// multipartFile 에 파일이름으로서 가져와 객체에 저장.
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			
			if(multipartFile.isEmpty() == false) {
				// 원본 파일명 저장.
				originalFileName = multipartFile.getOriginalFilename();
				System.out.println(originalFileName);
				// 파일 확장자명 저장.
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				// 저장할 이름 => 만들어진 RandomString + 확장자명. ex) 사진1.png => asdfksdf.png
				storedFileName = getRandomString() + originalFileExtension;
				// 생성한 파일을 지정해둔 경로에 저장.
				file = new File(filePath + "\\" +storedFileName);
				multipartFile.transferTo(file);
				
				// 한개의 ROW 를 저장할 HashMap 생성 후 put.
				listMap = new HashMap<String,Object>();
				listMap.put("prtnEnrlmNum", prtnEnrlmNum);
				listMap.put("oriFileNm", originalFileName);
				listMap.put("saveFileNm", storedFileName);
				listMap.put("fileSize", multipartFile.getSize());
				listMap.put("fileUseYn", "Y");
				
				// 한 개의 ROW 단위로 ArrayList 에 add.
				list.add(listMap);
			}
		}
		return list;
	}
	public static String getRandomString() {
		//외부 API 로 random String 값 가져오는 메소드.
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	// filePath 에 저장된 파일 이름을 다운로드하는 메소드
	public String downloadFile(ErpPartnerVo erpPartnerVo, HttpServletResponse response) {
		
		File downloadFile = new File(filePath + "\\" +erpPartnerVo.getSaveFileNm());
		
		String msg="";
		
		byte fileByte[];
		
		try {
			fileByte = org.apache.commons.io.FileUtils.readFileToByteArray(downloadFile);
			response.setContentType("application/octet-stream");
			response.setContentLength(fileByte.length);
			response.setHeader("Content-Disposition",  "attachment; fileName=\""+URLEncoder.encode(erpPartnerVo.getOriFileNm(), "UTF-8")+"\";");
			response.getOutputStream().write(fileByte);
			response.getOutputStream().flush();
			response.getOutputStream().close();
		} catch (IOException e) {
			
			msg = "############### erpPartnerService.downloadFile Failed!!!! ["+e.getMessage()+"]";
			
		} finally {
			
		}
		return msg;
	}
	/*
	public void downloadFile(HttpServletRequest request, HttpServletResponse response, ErpPartnerVo erpPartnerVo) {
		
		String oriFileNm = erpPartnerVo.getOriFileNm();
		String saveFileNm = erpPartnerVo.getSaveFileNm();
		
		System.out.println(oriFileNm);
		System.out.println(saveFileNm);
		
		try {
			OutputStream out = response.getOutputStream();
			
			String downloadFile = filePath + "\\" + saveFileNm;
			
			File f = new File(downloadFile);
			
			response.setHeader("Cache-Control", "no-cache");
			response.addHeader("Content-disposition", "attachment; fileName="+downloadFile);
			
			FileInputStream  in = new FileInputStream(f);
			
			byte[] buffer = new byte[1024 * 8];
			
			while(true) {
				
				int count = in.read(buffer);
				if(count == -1)
					break;
				out.write(buffer, 0, count);
			}
			in.close();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("에러 안나고 클리아ㅓ..");
	}
	*/
}