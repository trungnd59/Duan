package com.entities;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Table(name = "departs")
@Entity
public class Departs {
	@Id
	@Column(name = "id", nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(name = "tenphongban")
	private String tenphongban;
	@Column(name = "chucnang")
	private String chucnang;
	@OneToMany(mappedBy = "depart", fetch = FetchType.EAGER)
	private Collection<Users> users;

	public Departs() {
		// TODO Auto-generated constructor stub
	}

	public Departs(Integer id, String tenphongban, String chucnang, Collection<Users> users) {
		super();
		this.id = id;
		this.tenphongban = tenphongban;
		this.chucnang = chucnang;
		this.users = users;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTenphongban() {
		return tenphongban;
	}

	public void setTenphongban(String tenphongban) {
		this.tenphongban = tenphongban;
	}

	public String getChucnang() {
		return chucnang;
	}

	public void setChucnang(String chucnang) {
		this.chucnang = chucnang;
	}

	public Collection<Users> getUsers() {
		return users;
	}

	public void setUsers(Collection<Users> users) {
		this.users = users;
	}
}
