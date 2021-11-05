package com.ivh.second.sensor.model.dao;


import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.ivh.second.sensor.model.vo.Sensor;

@Repository
public class SensorDao {

	public Sensor selectSensor1(SqlSessionTemplate sqlSession, Sensor s) {
		return sqlSession.selectOne("sensorMapper.selectSensor1", s);
	}

	public ArrayList<Sensor> selectList(SqlSessionTemplate sqlSession, Sensor s) {
		return (ArrayList)sqlSession.selectList("sensorMapper.selectList", s);
	}
	
	public HashMap<String, Object> selectList(SqlSessionTemplate sqlSession) {
		return (HashMap<String, Object>) sqlSession.selectList("sensorMapper.selectList");
	}
	

}
