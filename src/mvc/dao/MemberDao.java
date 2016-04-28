package mvc.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.FollowVo;
import vo.MembersVo;

public class MemberDao {

public MembersVo idSearch(String phone_num) {
		
		MembersVo vo =null;
		String res = "/mybatis/config.xml";
		try {
			InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();
			
			vo = session.selectOne("member.idSearch",phone_num);
			
		}catch(IOException ie){
			System.out.println(ie.getMessage());
		}
		return vo;
	}
	
	public MembersVo pwSearch(MembersVo membersvo){
		
		MembersVo vo = null;
		String res = "/mybatis/config.xml";
		try {
			InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();
		
			vo = session.selectOne("member.pwSearch", membersvo);
			
		}catch(IOException ie) {
			System.out.println(ie.getMessage());
		}
		return vo;
	}
	
	public MembersVo loginPro(HashMap<String,String> map) {
		MembersVo vo = new MembersVo();
		SqlSession sqlSession = null;
		String res = "/mybatis/config.xml";
		try {
			InputStream is = Resources.getResourceAsStream(res);

			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();
			
			vo= sqlSession.selectOne("member.loginPro",map);
			
	


		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return vo;

	}

	public MembersVo modifyForm(String id) {
		MembersVo vo = null;
		String res = "/mybatis/config.xml";
		try {
			InputStream is = Resources.getResourceAsStream(res);

			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();
			
			 vo = session.selectOne("member.modifyForm",id);
			
			session.commit();

			session.close();

		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return vo;
	}

	public void deletePro(HashMap<String, String> map){
		String res = "/mybatis/config.xml";
		try {
			int x =0;
			InputStream is = Resources.getResourceAsStream(res);

			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();
			
			session.delete("member.delete", map);
		
		
			} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
	}
	
	
	public void modifyPro(MembersVo membersvo) {
		
		String res = "/mybatis/config.xml";
		try {
			int x =0;
			InputStream is = Resources.getResourceAsStream(res);

			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();
			
			int n= session.update("member.modifyPro", membersvo);
			
			

			if (n > 0) {

				session.commit();
				System.out.println("update ok");
				x=1;
			
			} else {
				session.rollback();
				System.out.println("update fail");
			
				x=0;
			}
			
		

			session.close();

		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
	}

	public void inputPro(MembersVo membersvo) {

		String res = "/mybatis/config.xml";
		try {
			InputStream is = Resources.getResourceAsStream(res);

			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();

			int n = session.insert("member.add", membersvo);

			if (n > 0) {

				session.commit();
				System.out.println("insert ok");
			} else {
				session.rollback();
				System.out.println("insert fail");
			}



			session.close();

		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
	}
	
	
	// 목록
	public MembersVo getMemberList(MembersVo vo){
		MembersVo list = null;
		String res = "/mybatis/config.xml";
		try{
			
			InputStream is = Resources.getResourceAsStream(res);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();

			list = (MembersVo) session.selectList("member.getlist", vo);

			
		}catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return list;
	}
	
	public int count(MembersVo vo){
		
		int count = 0;
		String res="/mybatis/config.xml";
		try{
			InputStream is = Resources.getResourceAsStream(res);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			System.out.println("factory ok");
			SqlSession session = factory.openSession();
			
			int n = session.insert("member.count", vo);
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
