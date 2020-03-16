package com.sise.travel.Dao.Impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sise.travel.Dao.CityDao;
import com.sise.travel.po.City;

@Transactional(readOnly=false)
@Repository("cityDao")
public class CityDaoImpl extends HibernateDaoSupport implements CityDao{
	@Autowired
	public void setSessionFactoryOverride(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	@Override
	public List<City> getCity() {
		return (List<City>)getHibernateTemplate().find("from City");
	}

	@Override
	public City findCity(Integer id) {
		return getHibernateTemplate().get(City.class,id);
	}
	@Override
	public List<City> findCityid(String name) {
		return (List<City>)getHibernateTemplate().find("from City where cityName = '" + name + "'");
	}

}
