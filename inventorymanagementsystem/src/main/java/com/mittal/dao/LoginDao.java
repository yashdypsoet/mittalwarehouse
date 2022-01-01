package com.mittal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {

	ConnectiondDao condao=new ConnectiondDao();
	
	public boolean check(String un,String ps)
	{
		
		String sql="select * from login where UserName=? and Password=?";
		
		try{
			Connection con= condao.getConnection();
			
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1, un);
			pst.setString(2, ps);

			ResultSet rs= pst.executeQuery();
			
			
			if(rs.next())
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		catch (Exception e) {
			return false;
			// TODO: handle exception
		}
	}
}
