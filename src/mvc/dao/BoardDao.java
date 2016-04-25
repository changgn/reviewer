package mvc.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.BoardVo;


public class BoardDao {
	
	public static void main(String[] args) {
			
			String res = "config.xml";
			try {
			  	InputStream is = Resources.getResourceAsStream(res);
				
				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
				System.out.println("factory ok");
				SqlSession session = factory.openSession();
				
				BoardVo vo = new BoardVo();
	
				int n = session.insert("board.add", vo);
	
				if (n > 0) {
	
					session.commit();
					System.out.println("insert ok");
				} else {
					session.rollback();
					System.out.println("insert f");
				}
	
				n = session.delete("board.remove", "batis");
				System.out.println("delete 처리건수:" + n);
	
				session.commit();
	
				session.close();
	
			} catch (IOException ie) {
				System.out.println(ie.getMessage());
			}
	}

}
