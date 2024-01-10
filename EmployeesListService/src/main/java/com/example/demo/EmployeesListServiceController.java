package com.example.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.websocket.server.PathParam;
@RestController

@RequestMapping("/crud")

public class EmployeesListServiceController {
	private Connection con;
	
	
	 @GetMapping("/list")
	 public List<List> getCon() throws Exception{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb", "root", "abes290");
			List<List> emps = new ArrayList();
			try{
				Statement stmt=con.createStatement();
				String select = "select * from employee";
				ResultSet rs=stmt.executeQuery(select);
				System.out.println("Query execute successfully.");
				while(rs.next()) {
					List emp2 = new ArrayList();
					emp2.add(rs.getInt(1));
					emp2.add(rs.getString(2));
					emp2.add(rs.getInt(3));
//					emps.add(rs.getInt(1),rs.getString(2),rs.getInt(3));
					emps.add(emp2);
				}
				return emps;
			}
			catch(Exception e) {
				System.out.println("SQL error");
//				return "Error Occured ";
				List<List> l = new ArrayList();
				List l1 = Arrays.asList("SQL error");
				l.add(l1);
				return l;
			}
//			return "Unconditional Error";
}
}
