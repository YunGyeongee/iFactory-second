package com.ivh.second.sensor.model.service;

import java.util.HashMap;
import java.util.List;

import com.ivh.second.sensor.model.vo.Sensor;

public interface SensorService {
	
	// 1. 데이터값 하나만 추출
	Sensor selectSensor1(Sensor s);

	// 2. HashMap
	List<String> selectList();
	
}
