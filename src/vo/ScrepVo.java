package vo;

public class ScrepVo {
	
	private String id;
	private int content_num;
	
	public ScrepVo(){
		
	}
	
	public ScrepVo(String id, int content_num){
		super();
		this.id = id;
		this.content_num = content_num;
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getContent_num() {
		return content_num;
	}

	public void setContent_num(int content_num) {
		this.content_num = content_num;
	}

}
