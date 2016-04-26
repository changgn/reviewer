package mvc.dao;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.MembersVo;

public class MemberDao {

	public void loginPro(MembersVo membersvo) {
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

	public void modifyForm(MembersVo membersvo) {

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

	public void modifyPro(MembersVo membersvo) {

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
				System.out.println("insert f");
			}

			session.commit();

			session.close();

		} catch (IOException ie) {
			System.out.println(ie.getMessage());
		}
	}

}
