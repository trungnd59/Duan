package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entities.UsersRoles;

@Repository(value = "UserroleDAO")
@Transactional(rollbackFor = Exception.class)
public class UserRoleDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public List<UsersRoles> findAllUserRole() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("From UsersRoles", UsersRoles.class).getResultList();
	}

	public void saveUserRole(final UsersRoles userroles) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(userroles);
	}

	public void updateUserRole(final UsersRoles userroles) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(userroles);
	}

	public UsersRoles finUserRoleByID(final int id) {
		Session session = this.sessionFactory.getCurrentSession();
		return session.get(UsersRoles.class, id);
	}

	public void deleteUserRole(final UsersRoles userroles) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(userroles);
	}
}