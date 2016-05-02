package mvc.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.PhotoVo;

public class PhotoDao {
	
	private static PhotoDao instance = new PhotoDao();
	
	public static PhotoDao getInstance() {
		return instance;
	}
	
	private PhotoDao() { }
	
	public int insert(PhotoVo vo) {
		String res = "mybatis/config.xml";
		int n = 0;
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			n = session.insert("photo.add", vo);
			
			if(n>0) {
				session.commit();
			} else {
				session.rollback();
			}
			
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return n;
	}
	
	public List<PhotoVo> getListByBoardNum(Integer board_num) {
		List<PhotoVo> list = null;
		String res = "mybatis/config.xml";
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			list = session.selectList("photo.getListByBoardNum", board_num);
			
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return list;
	}
	public PhotoVo getOneByBoardNum(Integer board_num) {
		PhotoVo Photo = null;
		String res = "mybatis/config.xml";
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			Photo = session.selectOne("photo.getOneByBoardNum", board_num);
			
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return Photo;
	}

	
}
