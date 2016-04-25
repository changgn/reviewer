package vo;

import java.util.Date;

public class BoardVo {
	
	private int board_num;
	private String id;
	private String category_id;
	private String content;
	private Date write_date;
	private int recommend_num;
	private int report_num;
	private int screp;
	
	public BoardVo(){
		
	}
	
	public BoardVo(int board_num, String id, String category_id, String content, Date write_date, int recommend_num,int report_num, int screp){
		super();
		this.board_num = board_num;
		this.id = id;
		this.category_id = category_id;
		this.content = content;
		this.write_date = write_date;
		this.recommend_num = recommend_num;
		this.report_num = report_num;
		this.screp = screp;
		
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public int getRecommend_num() {
		return recommend_num;
	}

	public void setRecommend_num(int recommend_num) {
		this.recommend_num = recommend_num;
	}

	public int getReport_num() {
		return report_num;
	}

	public void setReport_num(int report_num) {
		this.report_num = report_num;
	}

	public int getScrep() {
		return screp;
	}

	public void setScrep(int screp) {
		this.screp = screp;
	}
	
}
