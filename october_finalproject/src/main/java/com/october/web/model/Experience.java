package com.october.web.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Experience {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int srno;
	private String companyname;
	private String role;
	private String startdate;
	private String enddate;
	public int getSrno() {
		return srno;
	}
	public void setSrno(int srno) {
		this.srno = srno;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public Experience(int srno, String companyname, String role, String startdate, String enddate) {
		super();
		this.srno = srno;
		this.companyname = companyname;
		this.role = role;
		this.startdate = startdate;
		this.enddate = enddate;
	}
	public Experience() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Experience [srno=" + srno + ", companyname=" + companyname + ", role=" + role + ", startdate="
				+ startdate + ", enddate=" + enddate + "]";
	}
	
}
