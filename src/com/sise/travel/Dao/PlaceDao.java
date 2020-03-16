package com.sise.travel.Dao;

import java.util.List;

import com.sise.travel.po.Place;

public interface PlaceDao {
	public List<Place> getPlace();
	public Place findPlace(Integer id);
}
