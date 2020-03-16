package com.sise.travel.service;

import java.util.List;

import com.sise.travel.po.Introduce;

public interface IntroduceService {
	public List<Introduce> FindRoute(Integer id);
	public List<Introduce> findIntroduce(Integer id);
	public List<Introduce> AllRoute();
}
