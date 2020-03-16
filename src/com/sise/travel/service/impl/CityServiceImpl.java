package com.sise.travel.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sise.travel.Dao.CityDao;
import com.sise.travel.po.City;
import com.sise.travel.service.CityService;

@Transactional(readOnly=false)
@Service("cityService")
public class CityServiceImpl implements CityService{
	@Resource private CityDao cityDao;
	@Transactional(readOnly=true)

	public List<City> FindCity() {
		return cityDao.getCity();
	}

	public void findCity(Integer id) {
		cityDao.findCity(id);
	}

	public List<City> FindCityID(String name) {
		return cityDao.findCityid(name);
	}

}
