package mvc.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.BoardVo;


public class BoardDao {
	private static BoardDao instance = new BoardDao();
	
	public static BoardDao getInstance() {
		return instance;
	}
	
	private BoardDao() { }
	
	public List<BoardVo> getList() {
		List<BoardVo> list = null;
		String res = "mybatis/config.xml";
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			list = session.selectList("board.getList");
	
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return list;
	}
	public Integer getRecentBoardNumById(String id) {
		Integer recentBoardNum = null;
		String res = "mybatis/config.xml";
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			recentBoardNum = session.selectOne("board.getRecentBoardNumById", id);
	
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return recentBoardNum;
	}
	
	public BoardVo getByBoardNum(Integer board_num) {
		BoardVo vo = null;
		String res = "mybatis/config.xml";
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			vo = session.selectOne("board.getByBoardNum", board_num);
	
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return vo;
	}
	public int insert(BoardVo vo) {
		String res = "mybatis/config.xml";
		int n = 0;
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			n = session.insert("board.add", vo);
			
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
	
}
