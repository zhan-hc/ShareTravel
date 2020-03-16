package com.sise.travel.po;

import java.util.HashSet;
import java.util.Set;

public class Place {
	private Integer sid;
	private String spotname;//景点名称
	private String images;//景点图片路径
	private String introduce;//景点介绍
	private String times;//景点开放时间
	private Set<Introduce> introduces=new HashSet<Introduce>();
	public Integer getSid() {
		return sid;
	}
	public String getSpotname() {
		return spotname;
	}
	public String getImages() {
		return images;
	}
	public String getIntroduce() {
		return introduce;
	}
	public Set<Introduce> getIntroduces() {
		return introduces;
	}
	public String getTimes() {
		return times;
	}
	public void setTimes(String times) {
		this.times = times;
	}
	public void setIntroduces(Set<Introduce> introduces) {
		this.introduces = introduces;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public void setSpotname(String spotname) {
		this.spotname = spotname;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
}
