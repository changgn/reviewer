package mvc.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.FollowVo;

public class FollowDao {
	private SqlSessionFactory sqlSessionFactory;
	
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
	public void followeradd(FollowVo vo){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			int n = sqlSession.insert("addfrom", vo);
			if(n>0){
				sqlSession.commit();
			}
		} finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	// 팔로잉 추가
	public void followingadd(FollowVo vo){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			int n = sqlSession.insert("addto", vo);
			if(n>0){
				sqlSession.commit();
			}
		} finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	
	// 팔로워 삭제
	public void followerremove(FollowVo vo){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			int n = sqlSession.delete("removefrom", vo);
			if(n>0){
				sqlSession.commit();
			}
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	
	// 팔로잉 삭제
	public void followingremove(FollowVo vo){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			int n = sqlSession.delete("removeto", vo);
			if(n>0){
				sqlSession.commit();
			}
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	
	
	// 팔로워 리스트
	public List getListFrom(FollowVo vo){
		SqlSession sqlSession = null;
		try{
			sqlSession=sqlSessionFactory.openSession();
			return sqlSession.selectList("getlistfrom");
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	// 팔로잉 리스트
	public List getListTo(FollowVo vo){
		SqlSession sqlSession = null;
		try{
			sqlSession=sqlSessionFactory.openSession();
			return sqlSession.selectList("getlistto");
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
	
	public void followcheck(FollowVo vo){
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			int n = sqlSession.delete("removeto", vo);
			if(n>0){
				sqlSession.commit();
			}
		}finally{
			if(sqlSession!=null)sqlSession.close();
		}
	}
}
