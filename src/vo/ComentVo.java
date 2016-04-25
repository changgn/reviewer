package vo;

import java.util.Date;

public class ComentVo {
	
	private int coment_num;
	private int content_num;
	private String id;
	private String content;
	private Date write_date;
	
	public ComentVo(){
		
	}
	
	public ComentVo(int coment_num, int content_num, String id, String content, Date write_date) {
		super();
		this.coment_num = coment_num;
		this.content_num = content_num;
		this.id = id;
		this.content = content;
		this.write_date = write_date;
		
		
	}

	public int getComent_num() {
		return coment_num;
	}

	public void setComent_num(int coment_num) {
		this.coment_num = coment_num;
	}

	public int getContent_num() {
		return content_num;
	}

	public void setContent_num(int content_num) {
		this.content_num = content_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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
	

}
