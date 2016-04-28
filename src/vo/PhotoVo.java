package vo;

public class PhotoVo {

	private String fileName;
	private int content_num;
	private String realPath;

	public PhotoVo(){
		
	}
	
	public PhotoVo(String fileName, int content_num, String realPath) {
		super();
		this.fileName = fileName;
		this.content_num = content_num;
		this.realPath = realPath;
		
		
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getContent_num() {
		return content_num;
	}

	public void setContent_num(int content_num) {
		this.content_num = content_num;
	}

	public String getRealPath() {
		return realPath;
	}

	public void setRealPath(String realPath) {
		this.realPath = realPath;
	}

	
}
