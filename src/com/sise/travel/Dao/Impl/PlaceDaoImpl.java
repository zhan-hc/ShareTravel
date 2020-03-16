package com.sise.travel.Dao.Impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sise.travel.Dao.PlaceDao;
import com.sise.travel.po.Place;

@Transactional(readOnly=false)
@Repository("placeDao")
public class PlaceDaoImpl extends HibernateDaoSupport implements PlaceDao{
	@Autowired
	public void setSessionFactoryOverride(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	@Transactional (readOnly=true)
	@Override
	public List<Place> getPlace() {
		return (List<Place>) getHibernateTemplate().find("from Place");
	}

	@Override
	public Place findPlace(Integer id) {
		return getHibernateTemplate().get(Place.class,id);
	}

}
