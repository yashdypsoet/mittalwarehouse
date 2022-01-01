package com.mittal.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectiondDao {

		public Connection con=null;
		
		public Connection getConnection()
		{
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con= DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/mittal","root","root");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println("problem in establishing connection");
				e.printStackTrace();
			}
			
			return con;
		}	


}
