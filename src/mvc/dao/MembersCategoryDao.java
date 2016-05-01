package mvc.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.MembersCategoryVo;

public class MembersCategoryDao {
	private static MembersCategoryDao instance = new MembersCategoryDao();
	
	public static MembersCategoryDao getInstance() {
		return instance;
	}
	
	private MembersCategoryDao() { }
	
	public int insert(MembersCategoryVo vo) {
		String res = "mybatis/config.xml";
		int n = 0;
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			n = session.insert("membercategory.add", vo);
			
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
	
	public List<MembersCategoryVo> getlistById(String id) {
		List<MembersCategoryVo> list = null;
		String res = "mybatis/config.xml";
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			list = session.selectList("membercategory.getlistById", id);
	
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return list;
	}
	
	public List<String> getCategoryIdById(String id) {
		List<String> categoryIdList = null;
		String res = "mybatis/config.xml";
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			categoryIdList = session.selectList("membercategory.getCategoryIdById", id);
	
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return categoryIdList;
	}
	
	public int delete(MembersCategoryVo vo) {
		String res = "mybatis/config.xml";
		int n = 0;
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			n = session.insert("membercategory.remove", vo);
			
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
