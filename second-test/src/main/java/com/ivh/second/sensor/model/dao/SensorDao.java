package com.ivh.second.sensor.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.ivh.second.sensor.model.vo.Sensor;

@Repository
public class SensorDao {

	public Sensor timeSensor(SqlSessionTemplate sqlSession, Sensor s) {
		return sqlSession.selectOne("sensorMapper.timeSensor", s);
	}

}
