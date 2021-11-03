package com.ivh.second.sensor.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
	
	
	
//	@Override
//	public HashMap<String, Object> ajaxSelectSensor() {
//		
//		ArrayList<Sensor> sList1 = sDao.selectSensor1(sqlSession);
//		ArrayList<Sensor> sList2 = sDao.selectSensor2(sqlSession);
//		ArrayList<Sensor> sList3 = sDao.selectSensor3(sqlSession);
//		ArrayList<Sensor> sList4 = sDao.selectSensor4(sqlSession);
//		ArrayList<Sensor> sList5 = sDao.selectSensor5(sqlSession);
//		
//		HashMap<String, Object> map = new HashMap<>();
//		map.put("sList1", sList1);
//		map.put("sList2", sList2);
//		map.put("sList3", sList3);
//		map.put("sList4", sList4);
//		map.put("sList5", sList5);
//		
//		return map;
//		
//		
//	}
	

}
