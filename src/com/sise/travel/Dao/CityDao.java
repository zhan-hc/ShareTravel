package com.sise.travel.Dao;

import java.util.List;

import com.sise.travel.po.City;

public interface CityDao {
	public List<City> getCity();
	public City findCity(Integer id);
	public List<City> findCityid(String name);
}