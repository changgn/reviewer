package mvc.dao;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mvc.dao.RecommendDao;

public class RecommendDao {
	
	private static RecommendDao instance = new RecommendDao();
	
	public static RecommendDao getInstance() {
		return instance;
	}
	
	private RecommendDao() { }
	
}
