package kb04.ditto.jgig.entity;


public class Criteria {
	
	private int pageNum; //현재 페이지 번호
	private int amount=10; //한 페이지당 데이터 개수
	
	private int startPage; //바 시작 페이지
	private int endPage; //바 끝 페이지
	private int pageCount; //총 페이지
	
	// 변수 값을 세팅하는 방법 - 초기화 블럭 : {~~}, 생성자: 클래스명(){~~}, setter()
	//생성자를 이용한 기본 값 세팅
	public Criteria() {
		this.pageNum=1;
	}
	public Criteria(int pageNum) {
		this.pageNum=pageNum;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "pageNum=" + pageNum + ", amount=" + amount;
	}
	
	
}
