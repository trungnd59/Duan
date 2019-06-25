package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dao.UserDAO;
import com.entities.Users;

@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserDAO userDAO;

	public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException {

		Users user = userDAO.loadUserByUsername(username);
		if (user == null) {
			return null;
		}

		boolean enabled = true;
		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		boolean accountNonLocked = true;

		return new User(username, user.getPassword(), enabled, accountNonExpired, credentialsNonExpired,
				accountNonLocked, user.getAuthorities());
	}

	public List<com.entities.Users> findAllUser() {
		return userDAO.finAllUser();
	}

	public void saveUser(com.entities.Users user) {
		userDAO.saveUser(user);
	}

	public Users findUserById(int id) {
		return userDAO.findUserByid(id);
	}

	public void updateUser(Users user) {
		userDAO.updateUser(user);
	}

	public void deleteUser(int id) {
		Users user = userDAO.findUserByid(id);
		if (user != null) {
			userDAO.delete(user);
		}
	}

	public void deleteUserRole(int userId) {
		userDAO.deleteUserRoles(userId);
	}

}
