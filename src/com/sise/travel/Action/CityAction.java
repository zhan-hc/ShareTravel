package com.sise.travel.Action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sise.travel.po.City;
import com.sise.travel.service.CityService;

@Controller("cityAction")
@Scope("prototype")
public class CityAction extends ActionSupport{
	@Resource private CityService cityService;
	private List<City> cities;
	private String cityName;
	private City city;
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public List<City> getCities() {
		return cities;
	}
	public City getCity() {
		return city;
	}
	public void setCities(List<City> cities) {
		this.cities = cities;
	}
	public void setCity(City city) {
		this.city = city;
	}
	public String listID() {
		cities = cityService.FindCityID(cityName);
		return "list";
	}
}
