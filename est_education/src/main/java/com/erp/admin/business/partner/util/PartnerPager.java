package com.erp.admin.business.partner.util;

public class PartnerPager {

	// 페이지마다 할당 될 게시물  갯수 == 10
	public static final int PAGE_SCALE = 10;
	// 화면에 표시될 게시물 갯수 == 10
	public static final int BLOCK_SCALE = 10;
	
	private int curPage; // 현재 페이수 cc
	private int rowCount; // 조건에 해당하는 행의 갯수.

	private int curBlock; // 현재 페이지 블록 
	
	private int totPage; // 전체 페이지 갯수
	private int totBlock; // 전체 페이지 블록 갯수
	
    private int prevPage; // 이전 페이지
    private int nextPage; // 다음 페이지
    
    private int prevBlock; // 이전 페이지 블록
    private int nextBlock; // 다음 페이지 블록
    // WHERE rn BETWEEN #{start} AND #{end}
  
/*    
    private int pageBegin; // #{start} // 조건에 부합하는 시작하는 rownum
    private int pageEnd; // #{end} // 조건에 부합하는 마지막 rownum
*/    
    private int startRow;
    private int endRow;
    private int limit;
    
    // [이전] blockBegin -> (41) 42 43 44 45 46 47 48 49 50 [다음]
    private int blockBegin; // 현재 페이지 블록의 시작번호 : 41
    // [이전] 41 42 43 44 45 46 47 48 49 (50) <- blockEnd [다음]
    private int blockEnd; // 현재 페이지 블록의 끝번호 : 50
    
    // 검색조건에 부합하는 행의 갯수와 현재 페이지를 인자로 받아 생성자 메소드에서 PartnerPage 클래스에 선언된 필드 값들을 set 하는 메소드 실행.
    public PartnerPager(int rowCount, int curPage) {
    	
    	setCurPage(curPage);
    	setRowCount(rowCount);
    	
    	setCurBlock();
    	setTotPage();
    	setTotBlock();
    	setPrevPage();
    	setNextPage();
    	setPrevBlock();
    	setNextBlock();
    	setStartRow();
    	setEndRow();
    	setLimit();
    	setBlockBegin();
    	setBlockEnd();
    	
    }
    
	public void setCurPage(int curPage) {
		
		this.curPage = curPage;
	}
	
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
    
	public void setCurBlock() {
		
		this.curBlock = (int) Math.ceil((curPage -1) / BLOCK_SCALE) + 1; 
	}
	
    public void setTotPage() {
    	
    	this.totPage = (int) Math.ceil( (rowCount * 1.0) / PAGE_SCALE);
    }
    
    public void setTotBlock() {
	
    	this.totBlock = (int) Math.ceil( (totPage * 1.0) / BLOCK_SCALE );
	}

    public void setPrevPage() {
    	
    	this.prevPage = (curPage == 1) ? 1 : (curPage-1);	
    }
    
    public void setNextPage() {
    	
    	this.nextPage = (curPage >= totPage) ? totPage : (this.curPage +1);
    }
    
    public void setPrevBlock() {
    	
    	this.prevBlock = (curBlock == 1) ? 1 : (curBlock -1);
    }
    
    public void setNextBlock() {
    	
    	this.nextBlock = (curBlock >= totBlock) ? totBlock : curBlock + 1;
    }
    
    public void setBlockBegin() {
    	
    	this.blockBegin = (curBlock -1) * BLOCK_SCALE + 1;
    }
    
    public void setBlockEnd() {
    	
    	this.blockEnd = blockBegin + BLOCK_SCALE -1;
    }
    
    public void setStartRow() {
    	
    	this.startRow = (curPage -1)* PAGE_SCALE +1;
    }
    
    public void setEndRow() {
    	
    	this.endRow = startRow + PAGE_SCALE - 1 ;
    }
    
    public void setLimit() {
		this.limit = startRow - 1;
	}

	public int getCurPage() {
		return curPage;
	}

	public int getRowCount() {
		return rowCount;
	}

	public int getCurBlock() {
		return curBlock;
	}

	public int getTotPage() {
		return totPage;
	}

	public int getTotBlock() {
		return totBlock;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getPrevBlock() {
		return prevBlock;
	}

	public int getNextBlock() {
		return nextBlock;
	}

	public int getBlockBegin() {
		return blockBegin;
	}

	public int getBlockEnd() {
		return blockEnd;
	}

	public int getStartRow() {
		return startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public int getLimit() {
		return limit;
	}

}
