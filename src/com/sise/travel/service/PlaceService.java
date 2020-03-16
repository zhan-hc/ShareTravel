package com.sise.travel.service;

import java.util.List;

import com.sise.travel.po.Place;

public interface PlaceService {
	public List<Place> FindPlace();
	public void findPlace(Integer id);
}
