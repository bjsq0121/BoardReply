package org.zerock.persistence;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class pointDAOImpl implements PointDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "org.zerock.mapper.PointMapper";
	@Override
	public void updatePoint(String userid, int point) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("userid", userid);
		paramMap.put("point", point);
		
		session.update(namespace+".updatePoint", paramMap);
	}

}
