package mvc.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.BoardVo;
import vo.MembersCategoryVo;


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
