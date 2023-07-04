package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.Customer;
import com.customer.feedback;

public class CustomerDBUtil 
{
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertcustomer(String fname , String lname, String address, String phone, String email, String password)
	{
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/medicare";
		String user = "root";
		String pass = "12345";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();	
			
			String sql = "insert into register values (0, '"+fname+"', '"+lname+"', '"+address+"', '"+phone+"', '"+email+"', '"+password+" ' )";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}		
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
		
		return isSuccess;
	}
	
	public static boolean insertFeeback(String name, String email, String message)
	{
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/medicare";
		String user = "root";
		String pass = "12345";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into feedback values (0, '"+name+"', '"+email+"', '"+message+"' ) ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static List<Customer> validate(String userName, String password)
	{
		ArrayList<Customer> cus = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/medicare";
		String user = "root";
		String pass = "12345";
		
		//validate
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from register where email = '"+userName+"' and password = '"+password+"'  ";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String address = rs.getString(4);
				String phone = rs.getString(5);
				String emailU = rs.getString(6);
				String passwordU = rs.getString(7);
				
				Customer c = new Customer(id, fname, lname, address, phone, emailU, passwordU);
				cus.add(c);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return cus;
	}
	
	
	//update customer details
	public static boolean updatecustomer(String id, String fname, String lname, String address, String phone, String email, String password)
	{
		try 
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update register set fName = '"+fname+"', lName='"+lname+"', address='"+address+"', phone='"+phone+"', email='"+email+"', password='"+password+"' "+" where id = '"+id+"'   ";            
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	//retrieving the updated customer details
	public static List<Customer> getCustomerDetails(String Id)     //This return a list of Customer data
	{
		int convertedID = Integer.parseInt(Id);  // Converting String Id value to integer because ID is integer in database
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try
		{
			//connecting to database using the DBConnect file
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from register where id = '"+convertedID+"'  ";
			rs = stmt.executeQuery(sql);       //executing sql query
			
			while(rs.next())
			{
				int id = rs.getInt(1);            //get value from column 1
				String fname = rs.getString(2);   //get value from column 2
				String lname = rs.getString(3);   //get value from column 3
				String address = rs.getString(4); //get value from column 4
				String phone = rs.getString(5);   //get value from column 5
				String email = rs.getString(6);   //get value from column 6
				String password = rs.getString(7);  //get value from column 7 
				
				Customer c = new Customer(id, fname, lname, address, phone, email, password);        //assigning variables to customer class through constructor
				cus.add(c);                   //assigning customer object c to ArrayList object cus
			}
			
;		}
		catch(Exception e)
		{
			e.printStackTrace();   //display the error
		}
		
		return cus;     //returning customer data as a array-list
	}
	
	
	//delete customer data from database
	public static boolean deleteCustomer(String id)
	{
		int convertedId = Integer.parseInt(id);
		
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from register where id = '"+convertedId+"'   ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<feedback> getFeedbackList()
	{
		ArrayList<feedback> cusfeed = new ArrayList<>();
		
		//validate
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from feedback";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String message = rs.getString(4);
				
				feedback c = new feedback(id, name, email, message);
				cusfeed.add(c);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return cusfeed;		
		
	}
	
	
	
	
	
}
