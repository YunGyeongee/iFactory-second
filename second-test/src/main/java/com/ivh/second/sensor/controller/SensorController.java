package com.ivh.second.sensor.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ivh.second.sensor.model.service.SensorService;
import com.ivh.second.sensor.model.vo.Sensor;

@Controller
public class SensorController {
	
	@Autowired
	private SensorService sService;
	
	
	@RequestMapping("main.ss")
	public ModelAndView selectSensor1(Sensor s, HttpSession session, ModelAndView mv) {
		
		Sensor UsedSensor = sService.selectSensor1(s);
//		System.out.println(s);
//		System.out.println(UsedSensor);
		
		if(UsedSensor == null) {
			mv.addObject("errorMsg", "조회 실패");
			mv.setViewName("common/errorPage");
		} else {
			session.setAttribute("UsedSensor", UsedSensor);
			mv.setViewName("main");
		}
		
		return mv;
		
		
	}

}
