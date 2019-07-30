package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
@Table(name = "thanhtich")
@Entity
public class Thanhtich {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "loaithanhtich", nullable = false, columnDefinition = "TINYINT(1)")
	private Boolean loaithanhtich;
	@Column(name = "lydo")
	private String lydo;
	@Column(name = "ngayghinhan")
	private String ngayghinhan;
	@ManyToOne
	@JoinColumn(name = "userID")
	private Users users;
	
	@Transient
	private int sThanhTich;
	
	@Transient
	private int sKyLuat;

	public int getsThanhTich() {
		return sThanhTich;
	}

	public void setsThanhTich(int sThanhTich) {
		this.sThanhTich = sThanhTich;
	}

	public int getsKyLuat() {
		return sKyLuat;
	}

	public void setsKyLuat(int sKyLuat) {
		this.sKyLuat = sKyLuat;
	}

	public Thanhtich() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Boolean getLoaithanhtich() {
		return loaithanhtich;
	}

	public void setLoaithanhtich(Boolean loaithanhtich) {
		this.loaithanhtich = loaithanhtich;
	}

	public String getLydo() {
		return lydo;
	}

	public void setLydo(String lydo) {
		this.lydo = lydo;
	}


	public String getNgayghinhan() {
		return ngayghinhan;
	}

	public void setNgayghinhan(String ngayghinhan) {
		this.ngayghinhan = ngayghinhan;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

}
