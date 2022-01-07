package com.sampleBoard.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sampleBoard.dao.SampleBoardDao;
import com.sampleBoard.vo.BoardSampleVo;

@Service(value = "excelService")
public class ExcelService {
		
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "sampleBoardDao")
	SampleBoardDao sampleBoardDao;
	
	/**
     * 엑셀파일로 만들 리스트 생성
     * @param boardSampleVo
     * @return 엑셀파일 리스트(list)
     */
	public List<BoardSampleVo> sampleBoardList(BoardSampleVo boardSampleVo) throws Exception {
		
        List<BoardSampleVo> list = new ArrayList<BoardSampleVo>();
        list = sampleBoardDao.sampleBoardList(boardSampleVo);
        return list;
    }
	
	/**
     * 샘플 게시판 리스트를 엑셀 워크북 객체로 생성
     * @param list
     * @return 생성된 워크북(workbook)
     */
    public SXSSFWorkbook makeSimpleBaordExcelWorkbook(List<BoardSampleVo> list) {
    	
    	//SXSSF 생성자를 통해 xcls 확장자의 시트를 생성한다.
        SXSSFWorkbook workbook = new SXSSFWorkbook();
        
        //엑셀의 시트를 생성한다.
        SXSSFSheet sheet = workbook.createSheet("샘플 게시판");
        
        //시트 열 너비 설정한다.
        sheet.setColumnWidth(0, 1500);
        sheet.setColumnWidth(1, 3000);
        sheet.setColumnWidth(2, 3000);
        sheet.setColumnWidth(3, 1500);
        
        //해더 행을 생성한다.
        Row headerRow = sheet.createRow(0);
        //해당 행의 첫번째 열 셀 생성한다.
        Cell headerCell = headerRow.createCell(0);
        headerCell.setCellValue("글번호");
        //해당 행의 두번째 열 셀 생성
        headerCell = headerRow.createCell(1);
        headerCell.setCellValue("글제목");
        //해당 행의 세번째 열 셀 생성
        headerCell = headerRow.createCell(2);
        headerCell.setCellValue("글내용");
        //해당 행의 네번째 열 셀 생성
        headerCell = headerRow.createCell(3);
        headerCell.setCellValue("글작성자");
        //해당 행의 다번섯째 열 셀 생성
        headerCell = headerRow.createCell(4);
        headerCell.setCellValue("등록/수정일자");
        //해당 행의 여섯번째 열 셀 생성
        headerCell = headerRow.createCell(5);
        headerCell.setCellValue("글조회수");
        
        //샘플게시판 정보 행 및 셀 생성을 생성한다.
        //반복문을 사용하여서 열에대한 정보를 넣어 계속 정보를 넣어준다.
        Row bodyRow = null;
        Cell bodyCell = null;
        for(int i=0; i<list.size(); i++) {
        	BoardSampleVo boardSampleVo = list.get(i);
            
            // 행을 생성한다.
            bodyRow = sheet.createRow(i+1);
            //데이터 글번호를 표시한다.
            bodyCell = bodyRow.createCell(0);
            bodyCell.setCellValue(boardSampleVo.getBno());
            //데이터 글제목을 표시한다.
            bodyCell = bodyRow.createCell(1);
            bodyCell.setCellValue(boardSampleVo.getTitle());
            //데이터 글내용을 표시한다.
            bodyCell = bodyRow.createCell(2);
            bodyCell.setCellValue(boardSampleVo.getContent());
            //데이터 글작성자를 표시한다.
            bodyCell = bodyRow.createCell(3);
            bodyCell.setCellValue(boardSampleVo.getWriter());
            //데이터 글등록/수정일자를 표시한다.
            bodyCell = bodyRow.createCell(4);  
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            bodyCell.setCellValue(sdf.format(boardSampleVo.getRegdate()));
            //데이터 글조회수를 표시한다.
            bodyCell = bodyRow.createCell(5);
            bodyCell.setCellValue(boardSampleVo.getViewcnt());
        }
        
        //workbook에 엑셀 정보를 넣어서 반환한다.
        return workbook;
    }
	    
    /**
     * 생성한 엑셀 워크북을 컨트롤레에서 받게해줄 메소드
     * @param list
     * @return
     */
    public SXSSFWorkbook excelFileDownloadProcess(List<BoardSampleVo> list) {
        return this.makeSimpleBaordExcelWorkbook(list);
    }
    
    /**
     * 엑셀파일을 업로드를 해줄 메소드
     * @param list
     * @return 행의 모든 정보 list
     */
    @SuppressWarnings("resource")
	public List<BoardSampleVo> uploadExcelFile(MultipartFile excelFile){
		//BoardSampleVo를  ArrayList 기본생성자를 사용한다.
        List<BoardSampleVo> list = new ArrayList<BoardSampleVo>();
        
        try {
        	
        	//현재 가지고온 파일의 정보를 가지고온다.
            OPCPackage opcPackage = OPCPackage.open(excelFile.getInputStream());
            
            //워크북 형태로 변환하여 xcls파일을 가지고 온다.
            //XSSF일경우 xcls파일만 인식할 수 있다.
            
			XSSFWorkbook workbook = new XSSFWorkbook(opcPackage);
            
            // 첫번째 시트 불러오기
            XSSFSheet sheet = workbook.getSheetAt(0);
            
            //for문을 사용해서 sheet의 정보의 행의 정보를 반복을 돌려서 행마다 데이터를 현재 DB에 저장된 테이블에 저장될 수 있도록 한다.
            for(int i=1; i<sheet.getLastRowNum() + 1; i++) {
            	//BoardSampleVo의 기본생성자를 만든다.
            	BoardSampleVo boardSampleVo = new BoardSampleVo();
            	//row변수에 엑셀 sheet를 의 정보를 가지고 온다.
                XSSFRow row = sheet.getRow(i);
                //Timestamp를 포맷형태로 변화하기 위해서 사용한다.
                //SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                
                // 행이 존재하기 않으면 continue를 통해 패스하게 한다.
                if(null == row) { continue; }
                
                //행 데이터 받아오기 --> 현재 코드는 게시판의 번호,제목,내용,작성자,등록/수정일자,조회수를 예로 든다.
                //글 번호
                //XSSFCell cell = row.getCell(0);
                //if(null != cell) boardSampleVo.setBno((int)cell.getNumericCellValue());
                
                //글 제목
                XSSFCell cell = row.getCell(1);
                if(null != cell) boardSampleVo.setTitle(cell.getStringCellValue());
                
                //글 내용
                cell = row.getCell(2);
                if(null != cell) boardSampleVo.setContent(cell.getStringCellValue());
                
                //글 작성자
                cell = row.getCell(3);
                if(null != cell) boardSampleVo.setWriter(cell.getStringCellValue());
                
                //등록,수정일자
                //cell = row.getCell(4);
				//if(null != cell) boardSampleVo.setRegdate((Timestamp) cell.getDateCellValue());
                
                //글 조회수
                //cell = row.getCell(5);
                //if(null != cell) boardSampleVo.setViewcnt((int)cell.getNumericCellValue());
                
                //한 정보를 list에 담는다.
                list.add(boardSampleVo);
                
                //DAO를통해 데이터를 넣고, 다시 for문 조건식이 true면 반복 실행한다.
                sampleBoardDao.sampleBoardExcelInsert(boardSampleVo);
            }
            
            //list의 정보를 확인하기 위해서 console창에 출력한다.
            System.out.println("ExcelService LIST[] : " + list);
            
        } catch (Exception e) {
        	//에러 시 에러사항을 출력한다.
            e.printStackTrace();
        }
        //list를 반화한다.
        return list;
    }


	
}
