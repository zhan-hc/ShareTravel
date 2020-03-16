package com.sise.travel.Dao;

import java.util.List;

import com.sise.travel.po.Introduce;

public interface IntroduceDao {
	public List<Introduce> getIntroduce(Integer id);
	public List<Introduce> findIntroduce(Integer id);
	public List<Introduce> getAllRoute();
}
