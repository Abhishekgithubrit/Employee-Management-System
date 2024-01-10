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

public class EmployeeInsertServiceController {
	private Connection con;
	 @GetMapping("/insert")
	 public String getCon(@PathParam("id") int id,@PathParam("name") String name, @PathParam("salary") int salary ) throws Exception{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb", "root", "abes290");
			try{
				Statement stmt=con.createStatement();
				String insert = "insert into employee values("+id + ", '"+ name  +"', " + salary+ ")";
				stmt.executeUpdate(insert);
				System.out.println(name + " is Inserted successfully!");
				return (name + " is Inserted successfully!");
			}
			catch(Exception e) {
				System.out.println("SQL error" + e);
				return "Error Occured ";
			}

		}
}

