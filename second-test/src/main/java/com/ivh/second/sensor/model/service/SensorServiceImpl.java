package com.ivh.second.sensor.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public Sensor selectSensor1(Sensor s) {
		return sDao.selectSensor1(sqlSession, s);
	}

	@Override
	public ArrayList<Sensor> selectList(Sensor s) {
		return sDao.selectList(sqlSession, s);
	}

}
