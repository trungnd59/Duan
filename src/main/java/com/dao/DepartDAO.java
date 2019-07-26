package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entities.Departs;

@Repository(value = "DepartDAO")
@Transactional(rollbackFor = Exception.class)
public class DepartDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Departs> findAllDeparts() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("From Departs", Departs.class).getResultList();
	}

	public void saveDeparts(final Departs departs) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(departs);
	}

	public void updateDeparts(final Departs departs) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(departs);
	}

	public Departs findByIdDeparts(final int id) {
		Session session = this.sessionFactory.getCurrentSession();
		return session.get(Departs.class, id);
	}

	public void deleteDeparts(final Departs departs) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(departs);
	}

}
