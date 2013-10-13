package com.ubse.user;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;

import com.ubse.mybatis.UserMapper;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class UserDao {
	private static UserDao instance = new UserDao();
	
	private Log log = LogFactory.getLog(UserDao.class);
	
	private String resource = "com/ubse/mybatis/Configuration.xml";
	private Reader reader;
	private SqlSessionFactory sqlMapper;
	
	public static UserDao getInstance() {
		return instance;
	}
	
	private UserDao() {
		try {
			reader = Resources.getResourceAsReader(resource);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			if (log.isDebugEnabled()) {
				log.debug(e.getMessage());
			}
		}
	}
	
	public int insert(User user) {
		int ret = -1;
		SqlSession session = sqlMapper.openSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			ret = mapper.insert(user);
			session.commit();
		} finally {
			session.close();
		}
		return ret;
	}
	
	public User login(User user) {
		User you = null;
		SqlSession session = sqlMapper.openSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			you = mapper.login(user);
		} finally {
			session.close();
		}
		return you;
	}
	
	public int modify(User user) {
		int ret = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			ret = mapper.modify(user);
			session.commit();
		} finally {
			session.close();
		}
		return ret;
	}
	
	public void changePasswd(User user) {
		SqlSession session = sqlMapper.openSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.changePasswd(user);
			session.commit();
		} finally {
			session.close();
		}
	}
	
	public void bye(User user) {
		SqlSession session = sqlMapper.openSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			mapper.bye(user);
			session.commit();
		} finally {
			session.close();
		}
	}
	
	public ArrayList<User> getAllUsers() {
		ArrayList<User> all = new ArrayList<User>();
		SqlSession session = sqlMapper.openSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			all = mapper.getAllUsers();
		} finally {
			session.close();
		}
		return all;
	}
	
	public User getUserByEmail(String email) {
		User user = null;
		SqlSession session = sqlMapper.openSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			user = mapper.getUserByEmail(email);
		} finally {
			session.close();
		}
		return user;
	}
	
	public ArrayList<User> getUsersByKeyword(String keyword) {
		ArrayList<User> matched = new ArrayList<User>();
		SqlSession session = sqlMapper.openSession();
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			matched = mapper.getUsersByKeyword(keyword);
		} finally {
			session.close();
		}
		return matched;
	}	
	
}
