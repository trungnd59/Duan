package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name = "departs")
@Entity
public class Lichsulamviec {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "diadiem")
	private String diadiem;

	@Column(name = "vaitro")
	private String vaitro;

	@Column(name = "startdate")
	private String startdate;

	@Column(name = "finishdate")
	private String finishdate;

	@Column(name = "mota")
	private String mota;
	
	@ManyToOne
	@JoinColumn(name = "userID")
	private Users user;
}
