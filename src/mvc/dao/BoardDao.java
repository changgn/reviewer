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

import vo.BoardVo;


public class BoardDao {
	private SqlSessionFactory sqlSessionFactory;
	
	public BoardDao(){
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
	
	
}
