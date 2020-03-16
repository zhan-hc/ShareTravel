package com.sise.travel.po;

import java.util.HashSet;
import java.util.Set;

public class City {
	private Integer cid;
	private String cityName;
	private Set<Introduce> introduces=new HashSet<Introduce>();
	public Integer getCid() {
		return cid;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public Set<Introduce> getIntroduces() {
		return introduces;
	}
	public void setIntroduces(Set<Introduce> introduces) {
		this.introduces = introduces;
	}

}
