package vo;

public class RecommendVo {

	private String id;
	private int recommend_num;
	
	public RecommendVo(){
			
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getRecommend_num() {
		return recommend_num;
	}

	public void setRecommend_num(int recommend_num) {
		this.recommend_num = recommend_num;
	}

	public RecommendVo(String id, int recommend_num){
		super();
		this.id = id;
		this.recommend_num = recommend_num;
		
	}
	
}
