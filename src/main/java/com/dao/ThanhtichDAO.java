package com.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entities.Thanhtich;

@Repository(value = "ThanhtichDAO")
@Transactional(rollbackFor = Exception.class)
public class ThanhtichDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public List<Thanhtich> findAllThanhtich() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("FROM Thanhtich", Thanhtich.class).getResultList();
	}

	public void addThanhtich(final Thanhtich thanhtich) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(thanhtich);
	}

	public List<Object> sumRecord() {
		Session session = this.sessionFactory.openSession();
		String hql = "select e.users, sum(case when loaithanhtich=0 then 1 else 0 end) as sThanhTich, sum(case when loaithanhtich=1 then 1 else 0 end) as sKyLuat from Thanhtich e group by e.users";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Object> list= query.getResultList();
		return list;
	}
	
	public List<Object> tongLuong(){
		Session session = this.sessionFactory.openSession();
		String hql = "select sum(salary) as salary from Users";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Object> list= query.getResultList();
		return list;
	}
}
