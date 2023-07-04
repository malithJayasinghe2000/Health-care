package com.customer;

public class Customer {
	private int id;
	private String fname;
	private String lname;
	private String address;
	private String phone;
	private String email;
	private String password;
	
	
	public Customer(int id, String fname, String lname, String address, String phone, String email, String password) {
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.password = password;
	}


	public int getId() {
		return id;
	}


	public String getFname() {
		return fname;
	}


	public String getLname() {
		return lname;
	}


	public String getAddress() {
		return address;
	}


	public String getPhone() {
		return phone;
	}


	public String getEmail() {
		return email;
	}


	public String getPassword() {
		return password;
	}
	
}
