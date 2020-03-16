package com.sise.travel.Dao.Impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sise.travel.Dao.UserDao;
import com.sise.travel.po.User;


@Transactional(readOnly=false)
@Repository("userDao")
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	@Autowired
	public void setSessionFactoryOverride(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	@Transactional (readOnly=true)
	public List<User> getUser(String email) {
		return (List<User>) getHibernateTemplate().find("from User where email = '" + email + "'");
	}

	@Override
	public void saveUser(User user) {
		getHibernateTemplate().save(user);
		
	}

	@Override
	public User findUser(Integer id) {
		return getHibernateTemplate().get(User.class,id);
	}
}
