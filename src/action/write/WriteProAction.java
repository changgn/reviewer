package action.write;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import action.CommandAction;
import mvc.dao.BoardDao;
import mvc.dao.PhotoDao;
import vo.BoardVo;
import vo.PhotoVo;

public class WriteProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String realPath = "";
		String savePath = "fileSave";
		String type = "UTF-8";
		int maxSize = 5*1024*1024; // 5M
		ServletContext context = request.getServletContext();
		realPath = context.getRealPath(savePath);
		ArrayList<String> saveFiles = new ArrayList<String>();
		ArrayList<String> origFiles = new ArrayList<String>();
		
		// 게시물 작성자 = 로그인한 ID값 받아오기
		String id = (String)request.getSession().getAttribute("id");
		id="bal";
		
		// 정보를 저장할 객체 생성
		BoardVo boardVo = new BoardVo();
		PhotoVo photoVo = null;
		
		BoardDao boardDao = BoardDao.getInstance();
		PhotoDao photoDao = PhotoDao.getInstance();

		try {
			MultipartRequest multi = new MultipartRequest(request, realPath, maxSize, type, new DefaultFileRenamePolicy());
			
			System.out.println("저장할 카테고리 ID : " + multi.getParameter("addCategory"));
			System.out.println("저장할 글내용 : " + multi.getParameter("boardContent"));
			
			int uploadCount = 0;
			
			boardVo.setId(id);
			boardVo.setCategory_id(multi.getParameter("addCategory"));
			boardVo.setContent(multi.getParameter("boardContent"));
			int insertOk = boardDao.insert(boardVo);
			if(insertOk==0){
				System.out.println("게시글 insert 실패");
			} else {
				System.out.println("게시글 " + insertOk + "개 추가");
			}
			
			Enumeration<?> files = multi.getFileNames();
			while (files.hasMoreElements()) {
				String name = (String)files.nextElement();
				saveFiles.add(multi.getFilesystemName(name));
				origFiles.add(multi.getOriginalFileName(name));
				System.out.println("저장할 파일명 : " + multi.getOriginalFileName(name));
			}
			uploadCount = origFiles.size();
			if(origFiles.get(0) == null)	uploadCount = 0;
			System.out.println("저장할 파일갯수 : " + uploadCount);
			
			if(uploadCount > 0) {	// 저장할 파일이 있을 경우
				for(int i=0; i<saveFiles.size(); i++){
					String fileName = (String)saveFiles.get(i);
					int content_num = 3;
					realPath = request.getContextPath() + "/" + savePath + "/" + URLEncoder.encode(fileName, "UTF-8");
					
					photoVo = new PhotoVo(fileName, content_num, realPath);
					insertOk = photoDao.insert(photoVo);
					if(insertOk==0){
						System.out.println("사진 insert 실패");
					} else {
						System.out.println("사진 " + insertOk + "개 추가");
					}
				}
			}
		} catch(IOException ioe) {
			System.out.println(ioe);
		} catch(Exception ex) {
			System.out.println(ex);
		}
		
        return "/write/writePro.jsp";//해당 뷰
	}

}
