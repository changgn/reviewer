package vo;


public class CategoryVo {
	
	private String category_id;
	private String group1;
	private String group2;
	private String group3;
	
	public CategoryVo(){
		
	}
	
	public CategoryVo(String category_id, String group1, String group2, String group3){
		super();
		this.category_id = category_id;
		this.group1 = group1;
		this.group2 = group2;
		this.group3 = group3;
		
		
	}

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getGroup1() {
		return group1;
	}

	public void setGroup1(String group1) {
		this.group1 = group1;
	}

	public String getGroup2() {
		return group2;
	}

	public void setGroup2(String group2) {
		this.group2 = group2;
	}

	public String getGroup3() {
		return group3;
	}

	public void setGroup3(String group3) {
		this.group3 = group3;
	}
	

}
