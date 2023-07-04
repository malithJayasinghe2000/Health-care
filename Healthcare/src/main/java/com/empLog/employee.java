package com.empLog;

public class employee {
	private int appID;
	private String name;
	private String address;
	private String phone;
	private String email;
	private String gender;
	private String doctor;
	private String date;
	private String time;
	


	public employee(int appID, String name, String address, String phone, String email, String gender, String doctor,
			String date, String time) {

		this.appID = appID;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.doctor = doctor;
		this.date = date;
		this.time = time;
	}


	public int getAppID() {
		return appID;
	}


	public String getName() {
		return name;
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


	public String getGender() {
		return gender;
	}


	public String getDoctor() {
		return doctor;
	}


	public String getDate() {
		return date;
	}


	public String getTime() {
		return time;
	}
	
	

}
