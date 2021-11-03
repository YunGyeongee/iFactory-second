package com.ivh.second.sensor.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ivh.second.sensor.model.service.SensorService;
import com.ivh.second.sensor.model.vo.Sensor;

@Controller
public class SensorController {
	
	@Autowired
	private SensorService sService;
	
	
	@RequestMapping("time.sor")
	public void timeSensor(Sensor s, HttpSession session) {
		
		Sensor usedSensor = sService.timeSensor(s);
		System.out.println(s);
	}

}
