package com.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entities.Users;

@Repository(value = "userDAO")
@Transactional(rollbackFor = Exception.class)
public class UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public Users loadUserByUsername(final String username) {
		List<Users> users = new ArrayList<Users>();
		Session session = this.sessionFactory.getCurrentSession();
		users = session.createQuery("from Users where username=?", Users.class).setParameter(0, username).list();
		if (users.size() > 0) {
			return users.get(0);
		} else {
			return null;
		}

	}

	public List<Users> finAllUser() {
		Session ss = this.sessionFactory.getCurrentSession();
		return ss.createQuery("From Users", Users.class).getResultList();
	}

	public void saveUser(Users user) {
		Session ss = this.sessionFactory.getCurrentSession();
		ss.save(user);
	}

	public Users findUserByid(int id) {
		Session ss = this.sessionFactory.getCurrentSession();
		return ss.get(Users.class, id);
	}

	public void updateUser(Users user) {
		Session ss = this.sessionFactory.getCurrentSession();
		ss.update(user);
	}

	public void delete(Users user) {
		Session ss = this.sessionFactory.getCurrentSession();
		ss.remove(user);
	}

	/*
	 * xóa user role
	 */
	public void deleteUserRoles(int userId) {
		Session ss = this.sessionFactory.getCurrentSession();
		Query query2 = ss.createQuery("Delete from UsersRoles u where u.userId=:user");
		query2.setParameter("user", userId);
		query2.executeUpdate();
	}

}
