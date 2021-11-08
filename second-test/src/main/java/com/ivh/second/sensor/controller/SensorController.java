package com.ivh.second.sensor.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ivh.second.sensor.model.service.SensorService;
import com.ivh.second.sensor.model.vo.Sensor;

@RestController
public class SensorController {
	
	@Autowired
	private SensorService sService;
	
	
	@RequestMapping("main.ss")
	public ModelAndView selectSensor1(Sensor s, HttpSession session, ModelAndView mv) {
		
		Sensor UsedSensor = sService.selectSensor1(s);
		
		if(UsedSensor == null) {
			mv.addObject("errorMsg", "조회 실패");
			mv.setViewName("common/errorPage");
		} else {
			session.setAttribute("UsedSensor", UsedSensor);
			mv.setViewName("main");
		}
		
		return mv;
		
	}
	
	
	@ResponseBody
	@RequestMapping("main.test")
	public ModelAndView selectListOne(Sensor s, ModelAndView mv) {
		
		ArrayList<Sensor> sList = sService.selectList(s);
		System.out.println(sList);
		
		mv.addObject("sList", sList)
		  .addObject("s", s)
		  .setViewName("common/errorPage");
		
		return mv;
	}
	
	
	/*
	@ResponseBody
	@RequestMapping("main.test")
	public String selectListOne() {
		
		HashMap<String, Object> map = sService.selectList();
		return new Gson().toJson(map);
	}
	*/

}








