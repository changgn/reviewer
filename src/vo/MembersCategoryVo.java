package vo;

public class MembersCategoryVo {
	
	private String id;
	private int category_id;

	public MembersCategoryVo(){
		
	}
	
	public MembersCategoryVo(String id, int category_id){
		super();
		this.id = id;
		this.category_id = category_id;
		
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	
}
