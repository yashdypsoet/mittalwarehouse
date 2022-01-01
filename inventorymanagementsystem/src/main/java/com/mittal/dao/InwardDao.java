package com.mittal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.mittal.model.Stock;



public class InwardDao {
	
	

	
	ConnectiondDao condao=new ConnectiondDao();

	int result=0;
	
	public int registerStock(Stock stock)
	{
		System.out.println("Inside register stock");
		try{
			Connection con=condao.getConnection(); 
            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO stock" +
                    "  (suplierName, suplierInvocenumber, productcode, modelno, serialno, date, sysdate) VALUES " +
                    " (?, ?, ?, ?, ?,?,now());");
            
            java.sql.Timestamp sqlNow=new java.sql.Timestamp(new java.util.Date().getTime());
           // pstTimestamp(1,sqlNow);
            preparedStatement.setString(1, stock.getSuplierName());
            preparedStatement.setString(2, stock.getSuplierInvoicenuber());
            preparedStatement.setString(3, stock.getProductcode());
            preparedStatement.setString(4, stock.getModelno());
            preparedStatement.setString(5, stock.getSerialno());
            preparedStatement.setString(6, stock.getDate());
            
            System.out.println("Done loading Prepared Statement");
            
            result=preparedStatement.executeUpdate();
            
            System.out.println("fired query");
            return result;	 
		}
		catch (Exception e) {
			e.printStackTrace();
			return result;
			// TODO: handle exception
		}
	}
}
