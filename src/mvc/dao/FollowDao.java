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

import vo.FollowVo;
import vo.MembersVo;

public class FollowDao {
	private SqlSessionFactory sqlSessionFactory;
	
	private static FollowDao instance = new FollowDao(null);
	
	public static FollowDao getInstance() {
		return instance;
	}
	
	public FollowDao(String myid){
		String res = "/mybatis/config.xml";
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();
			session.commit();

			session.close();

		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
	}
	
	// 팔로워 추가
	public void addfrom(String id){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("addfrom", id);
			int n = sqlSession.insert("addfrom", id);
			if(n>0){
				sqlSession.commit();
			}
		} finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	// 팔로잉 추가
	public void addto(String id){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("addto", id);
			int n = sqlSession.insert("addto", id);
			if(n>0){
				sqlSession.commit();
			}
		} finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	
	// 팔로워 삭제
	public void removefrom(String id){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.delete("removefrom", id);
			int n = sqlSession.delete("removefrom", id);
			if(n>0){
				sqlSession.commit();
			}
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	
	// 팔로잉 삭제
	public void removeto(String id){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.delete("removeto", id);
			int n = sqlSession.delete("removeto", id);
			if(n>0){
				sqlSession.commit();
			}
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}

	// 팔로워 리스트
	public FollowVo getlistfrom(FollowVo vo){
		FollowVo list = null;
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();

			list = (FollowVo) sqlSession.selectList("follow.getlistfrom", vo);


			return list;
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	
	// 팔로잉 리스트
	public FollowVo getlistto(FollowVo vo){
		FollowVo list = null;
		SqlSession sqlSession=null;
		try{
			sqlSession = sqlSessionFactory.openSession();

			list = (FollowVo) sqlSession.selectList("follow.getlistto", vo);

			return list;
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	// 팔로워 세기
	public int countfrom(FollowVo vo){
		
		int count = 0;
		String res="/mybatis/config.xml";
		try{
			InputStream is = Resources.getResourceAsStream(res);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();
			
			int n = session.selectOne("follow.countfrom", vo);
			count = n;
			if (n > 0) {

				session.commit();
				
			} else {
				session.rollback();
				
			}

			session.close();

		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return count;
	}
	// 팔로잉
	public int countto(FollowVo vo){
		
		int count = 0;
		String res="/mybatis/config.xml";
		try{
			InputStream is = Resources.getResourceAsStream(res);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();
			
			int n = session.selectOne("follow.countto", vo);
			count = n;
			if (n > 0) {

				session.commit();
				
			} else {
				session.rollback();
			
			}

			session.close();

		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return count;
	}
}
