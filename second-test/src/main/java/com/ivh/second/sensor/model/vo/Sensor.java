package com.ivh.second.sensor.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;


public class Sensor {
	
	private int sensorNo;
	private String time;
	private String loadcell1;
	private String loadcell2;
	private String loadcell3;
	private String loadcell4;
	private String loadcell5;
	private String sensorDate;

	public Sensor() {}

	public Sensor(int sensorNo, String time, String loadcell1, String loadcell2, String loadcell3, String loadcell4,
			String loadcell5, String sensorDate) {
		super();
		this.sensorNo = sensorNo;
		this.time = time;
		this.loadcell1 = loadcell1;
		this.loadcell2 = loadcell2;
		this.loadcell3 = loadcell3;
		this.loadcell4 = loadcell4;
		this.loadcell5 = loadcell5;
		this.sensorDate = sensorDate;
	}

	public int getSensorNo() {
		return sensorNo;
	}

	public void setSensorNo(int sensorNo) {
		this.sensorNo = sensorNo;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getLoadcell1() {
		return loadcell1;
	}

	public void setLoadcell1(String loadcell1) {
		this.loadcell1 = loadcell1;
	}

	public String getLoadcell2() {
		return loadcell2;
	}

	public void setLoadcell2(String loadcell2) {
		this.loadcell2 = loadcell2;
	}

	public String getLoadcell3() {
		return loadcell3;
	}

	public void setLoadcell3(String loadcell3) {
		this.loadcell3 = loadcell3;
	}

	public String getLoadcell4() {
		return loadcell4;
	}

	public void setLoadcell4(String loadcell4) {
		this.loadcell4 = loadcell4;
	}

	public String getLoadcell5() {
		return loadcell5;
	}

	public void setLoadcell5(String loadcell5) {
		this.loadcell5 = loadcell5;
	}

	public String getSensorDate() {
		return sensorDate;
	}

	public void setSensorDate(String sensorDate) {
		this.sensorDate = sensorDate;
	}

	@Override
	public String toString() {
		return "Sensor [sensorNo=" + sensorNo + ", time=" + time + ", loadcell1=" + loadcell1 + ", loadcell2="
				+ loadcell2 + ", loadcell3=" + loadcell3 + ", loadcell4=" + loadcell4 + ", loadcell5=" + loadcell5
				+ ", sensorDate=" + sensorDate + "]";
	}

}
