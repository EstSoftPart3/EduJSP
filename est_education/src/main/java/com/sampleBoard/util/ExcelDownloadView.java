package com.sampleBoard.util;

import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.web.servlet.view.AbstractView;

public class ExcelDownloadView extends AbstractView {
	@Override
    protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        Locale locale = (Locale) model.get("locale");
        String workbookName = (String) model.get("workbookName");
        
        //겹치는 파일 이름 중복을 피하기 위해 시간을 이용해서 파일 이름에 추출.
        Date date = new Date();
        //날짜와 시간으로 다운로드 한부분을 누는 작업을 하기위해서 Format으로 형식을 지정해 준다.
        SimpleDateFormat dayformat = new SimpleDateFormat("yyyyMMdd", locale);
        SimpleDateFormat hourformat = new SimpleDateFormat("hhmmss", locale);
        //변수를 사용하여 현재 형식을 지정한다.
        String day = dayformat.format(date);
        String hour = hourformat.format(date);
        //파일 이름을 파일이름_00000000_000000으로 저장시킨다.
        String fileName = workbookName + "_" + day + "_" + hour + ".xlsx";         
        
        //여기서부터는 각 브라우저에 따른 파일이름 인코딩작업 진행.
        //브라우저 마다 인코디을 작업을 하여 엑셀파일이 정상 작동할 수 있도록 인코딩을 진행해 준다.
        String browser = request.getHeader("User-Agent");
        if (browser.indexOf("MSIE") > -1) {
            fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
        } else if (browser.indexOf("Trident") > -1) {       // IE11
            fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
        } else if (browser.indexOf("Firefox") > -1) {
            fileName = "\"" + new String(fileName.getBytes("UTF-8"), "8859_1") + "\"";
        } else if (browser.indexOf("Opera") > -1) {
            fileName = "\"" + new String(fileName.getBytes("UTF-8"), "8859_1") + "\"";
        } else if (browser.indexOf("Chrome") > -1) {
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < fileName.length(); i++) {
               char c = fileName.charAt(i);
               if (c > '~') {
                     sb.append(URLEncoder.encode("" + c, "UTF-8"));
                       } else {
                             sb.append(c);
                       }
                }
                fileName = sb.toString();
        } else if (browser.indexOf("Safari") > -1){
            fileName = "\"" + new String(fileName.getBytes("UTF-8"), "8859_1")+ "\"";
        } else {
             fileName = "\"" + new String(fileName.getBytes("UTF-8"), "8859_1")+ "\"";
        }
        
        response.setContentType("application/download;charset=utf-8");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");
        response.setHeader("Content-Transfer-Encoding", "binary");
        
       OutputStream os = null;
       SXSSFWorkbook workbook = null;
       
       try {
           workbook = (SXSSFWorkbook) model.get("workbook");
           os = response.getOutputStream();
           
           //엑셀 파일을 생성시켜준다.
           workbook.write(os);
       }catch (Exception e) {
           e.printStackTrace();
       } finally {
           if(workbook != null) {
               try {
                   workbook.close();
               } catch (Exception e) {
                   e.printStackTrace();
               }
           }
           
           if(os != null) {
               try {
                   os.close();
               } catch (Exception e) {
                   e.printStackTrace();
               }
           }
       }
    }
}
