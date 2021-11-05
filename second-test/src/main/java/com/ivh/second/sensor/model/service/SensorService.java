package com.ivh.second.sensor.model.service;

import java.util.ArrayList;
import java.util.List;

import com.ivh.second.sensor.model.vo.Sensor;

public interface SensorService {
	
	// 1. 데이터값 하나만 추출
	Sensor selectSensor1(Sensor s);

	// 2. 데이터값 여러개 뽑아서 랜덤으로 하나만 추출 => List
	ArrayList<Sensor> selectList(Sensor s);
	
}
