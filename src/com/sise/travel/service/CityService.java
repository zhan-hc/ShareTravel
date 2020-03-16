package com.sise.travel.service;

import java.util.List;

import com.sise.travel.po.City;

public interface CityService {
	public List<City> FindCity();
	public void findCity(Integer id);
	public List<City> FindCityID(String name);
}
