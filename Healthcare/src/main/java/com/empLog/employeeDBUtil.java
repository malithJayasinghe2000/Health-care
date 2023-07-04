package com.empLog;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;



public class employeeDBUtil {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	
	private static boolean isSuccess=false;
	
public static List<employee> validate(String userName,String password){
		
		ArrayList<employee> emp=new ArrayList<>();
		
		
		//create database connection
		String url="jdbc:mysql://localhost:3306/echannel";
		String user="root";
		String pass="0775747183mJ";
		
		
		
		//validate
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection(url,user,pass);
			Statement stmt=con.createStatement();
			String sql="select * from employee where username='"+userName+"' and password='"+password+"'";
			//String sql2="select * from appointment_new where Doctor='"+userName+"'";
			ResultSet rs=stmt.executeQuery(sql);
			//ResultSet rs2=stmt.executeQuery(sql2);
			 if( rs.next()) {
				 
				 String sql2="select * from appointment_new where Doctor='"+userName+"'";
				 ResultSet rs2=stmt.executeQuery(sql2);
				 
				while(rs2.next()) {
					 
				
				int Appid = rs2.getInt(1);
				String name=rs2.getString(2);
				String address=rs2.getString(3);
				String phone=rs2.getString(4);
				String email=rs2.getString(5);
				String gender=rs2.getString(6);
				String doctor=rs2.getString(7);
				String date=rs2.getString(8);
				String time=rs2.getString(9);
				
				employee emp1 = new employee(Appid,name,address,phone,email,gender,doctor,date,time);
				
				emp.add(emp1);
				
				
				
			}
				
			 }
			 
		}
		catch(Exception e){
		e.printStackTrace();	
		}
		
		return emp;
	}

	public static boolean updateAppointment(String id,String name,String address,String phone,String email,String gender,String doctor,String date,String time){
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="update appointment_new set Date='"+date+"', Time='"+time+"' where appointmentID='"+id+"' ";
			
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess =false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
		
		
	}
	
	public static boolean deleteApp(String id) {
		
		int convId=Integer.parseInt(id);
		try {
			
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="delete from appointment_new where appointmentID='"+convId+"'";
			int r=stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess=true;
			}
			else{
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}

}
