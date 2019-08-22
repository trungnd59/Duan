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

@Table(name = "chucvu")
@Entity
public class Chucvu {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(name = "tenchucvu")
	private String tenchucvu;
	@Column(name = "congviec")
	private String congviec;
	@OneToMany(mappedBy = "chucvu", fetch = FetchType.EAGER)
	private Collection<Users> users;

	public Chucvu() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTenchucvu() {
		return tenchucvu;
	}

	public void setTenchucvu(String tenchucvu) {
		this.tenchucvu = tenchucvu;
	}

	public String getCongviec() {
		return congviec;
	}

	public void setCongviec(String congviec) {
		this.congviec = congviec;
	}

	public Collection<Users> getUsers() {
		return users;
	}

	public void setUsers(Collection<Users> users) {
		this.users = users;
	}

}
