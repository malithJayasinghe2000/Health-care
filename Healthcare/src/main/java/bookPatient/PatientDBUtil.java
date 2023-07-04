package bookPatient;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.Statement;

public class PatientDBUtil {
	/*public static List<Patient> validate(String name ){
		
	}*/


public static boolean insertPatient(String name,String address,String phone,String email,String gender,String doctor,String date,String time) {
	boolean isSuccess=false;
	
	//create db connection
	String url="jdbc:mysql://localhost:3306/echannel";
	String user="root";
	String pass="0775747183mJ";
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection(url, user, pass);
		Statement stmt=con.createStatement();	
		String sql="insert into appointment_new values(0,'"+name+"','"+address+"','"+phone+"','"+email+"','"+gender+"','"+doctor+"','"+date+"','"+time+"')";
		int rs =stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess=true;
			
		}else {
			isSuccess=false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	
	return isSuccess;
}
}