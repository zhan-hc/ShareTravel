package com.sise.travel.Dao.Impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sise.travel.Dao.IntroduceDao;
import com.sise.travel.po.Introduce;
import com.sise.travel.po.Place;

@Transactional(readOnly=false)
@Repository("introduceDao")
public class IntroduceDaoImpl extends HibernateDaoSupport implements IntroduceDao{
	@Autowired
	public void setSessionFactoryOverride(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	@Transactional (readOnly=true)
	@Override
	public List<Introduce> getIntroduce(Integer id) {
		return (List<Introduce>) getHibernateTemplate().find("from Introduce where cid = " + id );
	}

	@Override
	public List<Introduce> findIntroduce(Integer id) {
		return (List<Introduce>) getHibernateTemplate().find("from Introduce where tid = " + id );
	}
	@Override
	public List<Introduce> getAllRoute() {
		return (List<Introduce>) getHibernateTemplate().find("from Introduce");
	}

}
