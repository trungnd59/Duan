package com.entities;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
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

	@Column(name = "age")
	private String age;

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

	public Users() {
		// TODO Auto-generated constructor stub
	}

	public Users(Integer id, String username, String password, Boolean enabled, Set<UsersRoles> usersRoleses,
			String fullname, String age, String address, String salary, Boolean gender, String email, String phone) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.usersRoleses = usersRoleses;
		this.fullname = fullname;
		this.age = age;
		this.address = address;
		this.salary = salary;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
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

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
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

	@Transient
	public List<GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (UsersRoles usersRoles : this.usersRoleses) {
			authorities.add(new SimpleGrantedAuthority(usersRoles.getRole().getName()));
		}
		return authorities;
	}

}
