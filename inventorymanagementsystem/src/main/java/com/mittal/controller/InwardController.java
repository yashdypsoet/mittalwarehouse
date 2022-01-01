package com.mittal.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.DispatcherType;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mittal.dao.InwardDao;
import com.mittal.model.Stock;

/**
 * Servlet implementation class InwardController
 */
public class InwardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("reached InwardController");
		java.util.Date date2=null;
		String suplierName= request.getParameter("suplierName");
		String suplierInvoicenuber= request.getParameter("suplierInv");
		String productcode= request.getParameter("productcode");
		String modelno= request.getParameter("modelno");
		String serialno= request.getParameter("serialno");
		String date= request.getParameter("Billdate");
		
		System.out.println("date is "+date);
		System.out.println("parameters recived");
		
		Stock stock=new Stock();
		
		stock.setSuplierName(suplierName);
		stock.setSuplierInvoicenuber(suplierInvoicenuber);
		stock.setProductcode(productcode);
		stock.setModelno(modelno);
		stock.setSerialno(serialno);
		stock.setDate(date);
		System.out.println("stock set");
		
		InwardDao indao=new InwardDao();
		
		try{
				int a=indao.registerStock(stock);
				System.out.println("Done with stock registeration");
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		response.sendRedirect("Inward.jsp");
		
		
		
	}

}
