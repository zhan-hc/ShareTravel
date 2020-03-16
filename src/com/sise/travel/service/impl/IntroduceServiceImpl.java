package com.sise.travel.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sise.travel.Dao.IntroduceDao;
import com.sise.travel.po.Introduce;
import com.sise.travel.service.IntroduceService;

@Transactional(readOnly=false)
@Service("introduceService")
public class IntroduceServiceImpl implements IntroduceService{
	@Resource private IntroduceDao introduceDao;
	@Transactional(readOnly=true)
	
	public List<Introduce> FindRoute(Integer id) {
		return introduceDao.getIntroduce(id);
	}

	public List<Introduce> findIntroduce(Integer id) {
		return introduceDao.findIntroduce(id);
		
	}

	@Override
	public List<Introduce> AllRoute() {
		return introduceDao.getAllRoute();
	}

}
