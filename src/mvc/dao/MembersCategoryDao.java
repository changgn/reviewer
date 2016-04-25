package mvc.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
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
	
	public List<MembersCategoryVo> getCategoryID(String id) {
		List<MembersCategoryVo> list = new ArrayList<MembersCategoryVo>();
		String res = "/mybatis/config.xml";
		
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			list = session.selectList("memberscategory.getCategoryId", id);

			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return list;
	}
	
}
