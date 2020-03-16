package com.sise.travel.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sise.travel.Dao.PlaceDao;
import com.sise.travel.po.Place;
import com.sise.travel.service.PlaceService;
@Transactional(readOnly=false)
@Service("placeService")
public class PlaceServiceImpl implements PlaceService{
	@Resource private PlaceDao placeDao;
	@Transactional(readOnly=true)

	@Override
	public List<Place> FindPlace() {
		return placeDao.getPlace();
	}

	@Override
	public void findPlace(Integer id) {
		placeDao.findPlace(id);
	}

}
