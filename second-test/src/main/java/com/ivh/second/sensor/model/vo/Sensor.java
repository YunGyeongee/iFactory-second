package com.ivh.second.sensor.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@RequiredArgsConstructor
@ToString
public class Sensor {
	
	private int sersorNo;
	private int time;
	private int loadcell1;
	private int loadcell2;
	private int loadcell3;
	private int loadcell4;
	private int loadcell5;

	
}
