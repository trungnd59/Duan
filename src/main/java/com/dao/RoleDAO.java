package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entities.Role;

@Repository(value = "RoleDAO")
@Transactional(rollbackFor = Exception.class)
public class RoleDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public List<Role> findAllRole() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("From Role", Role.class).getResultList();
	}
}
