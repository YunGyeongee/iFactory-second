package com.ivh.second.sensor.model.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.ivh.second.sensor.model.vo.Sensor;

@Repository
public class SensorDao {

	public Sensor selectSensor1(SqlSessionTemplate sqlSession, Sensor s) {
		return sqlSession.selectOne("sensorMapper.selectSensor1", s);
	}

	public List<String> selectList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("sensorMapper.selectList");
	}
	

}
