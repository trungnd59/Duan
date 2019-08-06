package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name = "lichsulamviec")
@Entity
public class LichSuLamViec {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "diadiem")
	private String diaDiem;
	
	@Column(name = "vaitro")
	private String vaitro;
	
	@Column(name = "startdate")
	private String startdate;
	
	@Column(name = "finishdate")
	private String finishdate;
	
	@Column(name = "mota")
	private String mota;
	
	@ManyToOne 
	@JoinColumn(name = "userId")
	private Users userlichsu;
	
	public LichSuLamViec() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDiadiem() {
		return diaDiem;
	}

	public void setDiadiem(String diadiem) {
		this.diaDiem = diadiem;
	}

	public String getVaitro() {
		return vaitro;
	}

	public void setVaitro(String vaitro) {
		this.vaitro = vaitro;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getFinishdate() {
		return finishdate;
	}

	public void setFinishdate(String finishdate) {
		this.finishdate = finishdate;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public Users getUserlichsu() {
		return userlichsu;
	}

	public void setUserlichsu(Users userlichsu) {
		this.userlichsu = userlichsu;
	}


}