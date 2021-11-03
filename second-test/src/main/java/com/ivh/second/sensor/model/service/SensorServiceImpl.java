package com.ivh.second.sensor.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ivh.second.sensor.model.dao.SensorDao;
import com.ivh.second.sensor.model.vo.Sensor;

@Service
public class SensorServiceImpl implements SensorService {
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private SensorDao sDao;
	
	
	@Override
	public Sensor timeSensor(Sensor s) {
		return sDao.timeSensor(sqlSession, s);
	}
	@Override
	public Sensor selectSensor(Sensor s) {
		// TODO Auto-generated method stub
		return null;
	}

}
