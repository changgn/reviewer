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

public class FollowDao {
	private SqlSessionFactory sqlSessionFactory;
	
	private static FollowDao instance = new FollowDao();
	
	public static FollowDao getInstance() {
		return instance;
	}
	
	public FollowDao(){
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
	public void addfrom(FollowVo vo){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("addfrom", vo);
			int n = sqlSession.insert("addfrom", vo);
			if(n>0){
				sqlSession.commit();
			}
		} finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	// 팔로잉 추가
	public void addto(FollowVo vo){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.insert("addto", vo);
			int n = sqlSession.insert("addto", vo);
			if(n>0){
				sqlSession.commit();
			}
		} finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	
	// 팔로워 삭제
	public void removefrom(FollowVo vo){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.delete("removefrom", vo);
			int n = sqlSession.delete("removefrom", vo);
			if(n>0){
				sqlSession.commit();
			}
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	
	// 팔로잉 삭제
	public void removeto(FollowVo vo){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.delete("removeto", vo);
			int n = sqlSession.delete("removeto", vo);
			if(n>0){
				sqlSession.commit();
			}
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	
	// 팔로워 리스트
	public FollowVo getlistfrom(FollowVo from_id){
		FollowVo list = null;
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();

			list = (FollowVo) sqlSession.selectList("follow.getlistfrom", from_id);


			return list;
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	
	// 팔로잉 리스트
	public FollowVo getlistto(String to_id){
		FollowVo list = null;
		SqlSession sqlSession=null;
		try{
			sqlSession = sqlSessionFactory.openSession();

			list = (FollowVo) sqlSession.selectList("follow.getlistto", to_id);

			return list;
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
}
