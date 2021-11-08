package com.ivh.second.sensor.model.service;

import java.util.ArrayList;
import java.util.List;

import com.ivh.second.sensor.model.vo.Sensor;

public interface SensorService {
	
	// 1. 데이터값 하나만 추출
	Sensor selectSensor1(Sensor s);

	// 2. 기존
	ArrayList<Sensor> selectList(Sensor s);
	
	// 2-1. 기존 변형 -> 안됨
//	Sensor selectList(Sensor s);
	
	// 3. HashMap
	//List<String> selectList();
	
}
