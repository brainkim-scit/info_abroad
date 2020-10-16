package com.project.info_abroad.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class userDao {

	@Autowired
	private SqlSession session;
	
}
