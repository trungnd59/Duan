package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entities.Chucvu;
import com.entities.LichSuLamViec;
import com.entities.Thanhtich;
@Repository(value = "LichSuDAO")
@Transactional(rollbackFor = Exception.class)
public class LichSuDAO {
	@Autowired
	private SessionFactory sessionFactory;
	/*
	 * 
	 */
	public List<LichSuLamViec> findAllLichSu(int userId) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql="From LichSuLamViec where userid="+userId;
		
		return session.createQuery(hql, LichSuLamViec.class).getResultList();
	}
	/*
	 * 
	 */
	public List<LichSuLamViec> findAllLichSuByUsername(String userName) {
		Session session = this.sessionFactory.getCurrentSession();
		String sql="select LichSuLamViec.id, LichSuLamViec.diadiem, LichSuLamViec.vaitro, LichSuLamViec.startdate, LichSuLamViec.finishdate, LichSuLamViec.mota from LichSuLamViec join users on LichSuLamViec.userId=Users.id where Users.username='"+userName+"'";
		String hql="from LichSuLamViec join Users on LichSuLamViec.UserId = Users.id where Users.username="+userName;
		//return (List<LichSuLamViec>)session.createSQLQuery(hql).getResultList();
		return session.createQuery(sql, LichSuLamViec.class).getResultList();
	}
	public void saveLichSu(final LichSuLamViec lichSuLamViec) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(lichSuLamViec);
	}

	public void updateLichSu(final LichSuLamViec lichSuLamViec) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(lichSuLamViec);
	}

	public LichSuLamViec findByIdLichSu(final int id) {
		Session session = this.sessionFactory.getCurrentSession();
		return session.get(LichSuLamViec.class, id);
	}

	public void deleteLichSuLamViec(final LichSuLamViec lichSuLamViec) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(lichSuLamViec);
	}
}
