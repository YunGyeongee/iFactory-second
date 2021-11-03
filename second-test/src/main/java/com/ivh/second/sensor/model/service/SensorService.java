package com.ivh.second.sensor.model.service;

import com.ivh.second.sensor.model.vo.Sensor;

public interface SensorService {
	
	// 1. 시간별 조회
	Sensor timeSensor(Sensor s);
	
	// 2. 각 센서별 조회
	Sensor selectSensor(Sensor s);

}
