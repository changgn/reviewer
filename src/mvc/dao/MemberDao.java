package mvc.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import vo.MembersVo;

public class MemberDao {

public MembersVo deleteCf(String id){
	
	MembersVo vo =null;
	String res = "/mybatis/config.xml";
	try {
		InputStream is = Resources.getResourceAsStream(res);
		
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();
		
		vo = session.selectOne("member.deleteCf",id);
		
	}catch(IOException ie){
		System.out.println(ie.getMessage());
	}
	return vo;
	
}
	
	
	public List<String> idSearch(String phone_num) {
		
		List<String> id = null;
		String res = "mybatis/config.xml";
		try {
			InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			id = session.selectList("member.idSearch", phone_num);
			session.close();
			
		}catch(IOException ie){
			System.out.println(ie.getMessage());
		}
		return id;
	}
	
	public MembersVo pwSearch(MembersVo membersvo){
		
		MembersVo vo = null;
		String res = "/mybatis/config.xml";
		try {
			InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
		
			vo = session.selectOne("member.pwSearch", membersvo);
			session.close();
			
		}catch(IOException ie) {
			System.out.println(ie.getMessage());
		}
		return vo;
	}
	
	public String loginPro(String id) {
		String passwd = null;
		String res = "mybatis/config.xml";
		try {
			InputStream is = Resources.getResourceAsStream(res);

			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			passwd = session.selectOne("member.loginPro",id);
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return passwd;

	}

	public MembersVo modifyForm(String id) {
		MembersVo vo = null;
		String res = "/mybatis/config.xml";
		try {
			InputStream is = Resources.getResourceAsStream(res);

			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
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
			SqlSession session = factory.openSession();
			
			session.delete("member.delete", map);
		
		
			} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
	}
	
	
	public int modifyPro(MembersVo membersvo) {
		int n = 0;
		String res = "/mybatis/config.xml";
		try {
			InputStream is = Resources.getResourceAsStream(res);

			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			n = session.update("member.modifyPro", membersvo);
			if (n > 0) {
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

	public void inputPro(MembersVo membersvo) {

		String res = "/mybatis/config.xml";
		try {
			InputStream is = Resources.getResourceAsStream(res);

			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
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

	// 멤버 회원 목록
	public List<String> getMemberList(){
		List<String> memberList = null;
		String res = "/mybatis/config.xml";
		try{
			InputStream is = Resources.getResourceAsStream(res);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			memberList = session.selectList("member.getIdList");
			session.close();
		}catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return memberList;
	}
	// 회원가입일 리스트 뽑기
	public List<Date> getRegDate(List<String> id){
		List<Date> RegDateList = null;
		String res = "mybatis/config.xml";
		try{
			InputStream is = Resources.getResourceAsStream(res);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			RegDateList = session.selectList("member.getRegList", id);
			session.close();
		}catch(IOException ie){
			System.out.println(ie.getMessage());
		}
		return RegDateList;
	}
	// 추천수 리스트 뽑기
	public List<Integer> getRecommedNum(List<String> id){
		List<Integer> RecommendNumList = null;
		String res = "mybatis/config.xml";
		try{
			InputStream is = Resources.getResourceAsStream(res);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			RecommendNumList = session.selectList("member.getRecList", id);
			session.close();
		}catch(IOException ie){
			System.out.println(ie.getMessage());
		}
		return RecommendNumList;
	}
	public Integer count(MembersVo vo){
		int count = 0;
		String res="/mybatis/config.xml";
		try{
			InputStream is = Resources.getResourceAsStream(res);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			count = session.selectOne("member.count", vo);
			if (count > 0) {
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
	public String idCheck(String id){
		String ch=null;
		String res = "/mybatis/config.xml";
		
		try{
			
			InputStream is = Resources.getResourceAsStream(res);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			ch = session.selectOne("member.idCheck", id);
	
		}catch (IOException ie) {
			System.out.println(ie.getMessage());
		}

		return ch;
	}

	private static MemberDao instance = new MemberDao();
	
	public static MemberDao getInstance() {
		return instance;
	}
	

}
