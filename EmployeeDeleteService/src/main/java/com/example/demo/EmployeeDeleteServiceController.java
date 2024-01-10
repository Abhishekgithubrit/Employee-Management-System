package com.example.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import jakarta.websocket.server.PathParam;

@RestController

@RequestMapping("/crud")

public class EmployeeDeleteServiceController{
	private Connection con;
	 @GetMapping("/delete")
	 public String getCon(@PathParam("id") int id ) throws Exception{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb", "root", "abes290");
			try{
				Statement stmt=con.createStatement();
				String delete = "delete from employee where id = "+ id;
				stmt.executeUpdate(delete);
				System.out.println(id + " is deleted  successfully!");
				return (id + " is deleted successfully!");
			}
			catch(Exception e) {
				System.out.println("SQL error");
				return "SQL Error";
			}
//			return "Unconditional Error";
		}
}

