package mvc.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.ComentVo;
import vo.MembersCategoryVo;

public class ComentDao {
	private static ComentDao instance = new ComentDao();
	
	public static ComentDao getInstance() {
		return instance;
	}
	
	private ComentDao() { }

	public int insert(ComentVo vo) {
		String res = "mybatis/config.xml";
		int n = 0;
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			n = session.insert("coment.add", vo);
			
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
	
	public List<ComentVo> getListByBoardNum(Integer board_num) {
		List<ComentVo> list = null;
		String res = "mybatis/config.xml";
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			list = session.selectList("coment.getListByBoardNum", board_num);
	
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return list;
	}
	public String getCountByBoardNum(Integer board_num) {
		String count = null;
		String res = "mybatis/config.xml";
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			count = session.selectOne("coment.getCountByBoardNum", board_num);
	
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return count;
	}
	public int removeByCommentNum(Integer coment_num) {
		String res = "mybatis/config.xml";
		int n = 0;
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			n = session.delete("coment.removeByCommentNum", coment_num);
			
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
