package com.entities;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

@Entity
@Table(name = "users", catalog = "duan", uniqueConstraints = @UniqueConstraint(columnNames = "username"))
public class Users implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	private Integer id;

	@Column(name = "username", unique = true, length = 45)
	private String username;

	@Column(name = "password")
	private String password;

	@Column(name = "enabled", nullable = false, columnDefinition = "TINYINT(1)")
	private Boolean enabled;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "users")
	private Set<UsersRoles> usersRoleses = new HashSet<UsersRoles>(0);

	@Column(name = "fullname")
	private String fullname;

	@Column(name = "ngaysinh")
	private String ngaysinh;

	@Column(name = "address")
	private String address;

	@Column(name = "salary")
	private String salary;

	@Column(name = "gender", nullable = false, columnDefinition = "TINYINT(1)")
	private Boolean gender;

	@Column(name = "email")
	private String email;

	@Column(name = "phone")
	private String phone;
	@ManyToOne
	@JoinColumn(name = "departID")
	private Departs depart;
	@ManyToOne
	@JoinColumn(name = "chucvuID")
	private Chucvu chucvu;
	@OneToMany(mappedBy = "users", fetch = FetchType.EAGER)
	private Collection<Thanhtich> thanhtich;
	@OneToMany(mappedBy = "userlichsu", fetch = FetchType.LAZY)
	private Collection<LichSuLamViec> lichsulv;

	public Users() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}


	public String getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public Boolean getGender() {
		return gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Set<UsersRoles> getUsersRoleses() {
		return this.usersRoleses;
	}

	public void setUsersRoleses(final Set<UsersRoles> usersRoleses) {
		this.usersRoleses = usersRoleses;
	}

	public Departs getDepart() {
		return depart;
	}

	public void setDepart(Departs depart) {
		this.depart = depart;
	}

	public Chucvu getChucvu() {
		return chucvu;
	}

	public void setChucvu(Chucvu chucvu) {
		this.chucvu = chucvu;
	}

	public Collection<Thanhtich> getThanhtich() {
		return thanhtich;
	}

	public void setThanhtich(Collection<Thanhtich> thanhtich) {
		this.thanhtich = thanhtich;
	}
	
	

	public Collection<LichSuLamViec> getLichsulv() {
		return lichsulv;
	}

	public void setLichsulv(Collection<LichSuLamViec> lichsulv) {
		this.lichsulv = lichsulv;
	}

	@Transient
	public List<GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (UsersRoles usersRoles : this.usersRoleses) {
			authorities.add(new SimpleGrantedAuthority(usersRoles.getRole().getName()));
		}
		return authorities;
	}

}
