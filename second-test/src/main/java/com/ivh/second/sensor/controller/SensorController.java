package com.ivh.second.sensor.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ivh.second.sensor.model.service.SensorService;

@RestController
public class SensorController {
	
	@Autowired
	private SensorService sService;
	
	/*
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
	*/
	
	
	@ResponseBody
	@RequestMapping("main.test")
	public String selectListOne(Model model) {
		
		HashMap<String, Object> map = new HashMap<String, Object>(); // HashMap 인스턴스화
		List<String> list = new ArrayList<>();						 // List 인스턴스화

		list = sService.selectList();
		map.put("mapList", list);
		
		System.out.println(list);
		model.addAttribute("mapList", list);
		
		return "common/errorPage";
	}
	

}








