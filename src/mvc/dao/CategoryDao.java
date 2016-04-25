package mvc.dao;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.CategoryVo;

public class CategoryDao {
	private static CategoryDao instance = new CategoryDao();
	
	public static CategoryDao getInstance() {
		return instance;
	}
	
	private CategoryDao() { }
	
	public CategoryVo getOne(String category_id) {
		CategoryVo list = null;
		String res = "mybatis/config.xml";
		try {
		  	InputStream is = Resources.getResourceAsStream(res);
			
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			list = session.selectOne("category.getOne", category_id);
	
			session.close();
		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
		return list;
	}

}
