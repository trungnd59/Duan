package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entities.Chucvu;

@Repository(value = "ChucvuDAO")
@Transactional(rollbackFor = Exception.class)
public class ChucvuDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Chucvu> findAllChucvu() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("From Chucvu", Chucvu.class).getResultList();
	}

	public void saveChucvu(final Chucvu chucvu) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(chucvu);
	}

	public void updateChucvu(final Chucvu chucvu) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(chucvu);
	}

	public Chucvu findByIdChucvu(final int id) {
		Session session = this.sessionFactory.getCurrentSession();
		return session.get(Chucvu.class, id);
	}

	public void deleteChucvu(final Chucvu chucvu) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(chucvu);
	}

}
