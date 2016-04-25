package mvc.dao;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.ComentVo;

public class ComentDao {

		public static void main(String[] args) {
			
			String res = "/mybatis/config.xml";
			try {
			  	InputStream is = Resources.getResourceAsStream(res);
				
				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
				System.out.println("factory ok");
				SqlSession session = factory.openSession();
				
				ComentVo vo = new ComentVo();
	
				int n = session.insert("coment.add", vo);
	
				if (n > 0) {
	
					session.commit();
					System.out.println("insert ok");
				} else {
					session.rollback();
					System.out.println("insert f");
				}
	
				n = session.delete("coment.remove", "batis");
				System.out.println("delete 처리건수:" + n);
	
				session.commit();
	
				session.close();
	
			} catch (IOException ie) {
				System.out.println(ie.getMessage());
			}
	}
}
