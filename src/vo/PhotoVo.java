package vo;

public class PhotoVo {

	private String fileName;
	private int board_num;
	private String realPath;

	public PhotoVo(){
		
	}
	
	public PhotoVo(String fileName, int board_num, String realPath) {
		super();
		this.fileName = fileName;
		this.board_num = board_num;
		this.realPath = realPath;
		
		
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getboard_num() {
		return board_num;
	}

	public void setboard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getRealPath() {
		return realPath;
	}

	public void setRealPath(String realPath) {
		this.realPath = realPath;
	}

	
}
