package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "users_roles", catalog = "duan")
public class UsersRoles implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	private Integer id;

	@Column(name = "user", unique = true, nullable = false, insertable = false, updatable = false)
	private Integer userId;

	@Column(name = "role", unique = true, nullable = false, insertable = false, updatable = false)
	private Integer roleId;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "role")
	private Role role;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user")
	private Users users;

	public UsersRoles() {
	}

	public UsersRoles(Role role, Users users) {
		this.role = role;
		this.users = users;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

}
