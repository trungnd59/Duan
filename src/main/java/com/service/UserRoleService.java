package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserRoleDAO;
import com.entities.UsersRoles;

@Service
@Transactional
public class UserRoleService {
	@Autowired
	UserRoleDAO userRolesDAO;

	public List<UsersRoles> findAllUsersRoles() {
		return userRolesDAO.findAllUserRole();
	}

	public void saveUsersRoles(UsersRoles usersRoles) {
		userRolesDAO.saveUserRole(usersRoles);
	}

	public void updateUsersRoles(UsersRoles usersRoles) {
		userRolesDAO.updateUserRole(usersRoles);
	}

	public UsersRoles findByIdUsersRoles(final int id) {
		return userRolesDAO.finUserRoleByID(id);
	}

	public void deleteUsersRoles(final int id) {
		UsersRoles usersRoles = userRolesDAO.finUserRoleByID(id);
		if (usersRoles != null) {
			userRolesDAO.deleteUserRole(usersRoles);
		}
	}
}
