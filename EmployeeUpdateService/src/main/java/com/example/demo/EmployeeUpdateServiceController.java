package com.example.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import jakarta.websocket.server.PathParam;

@RestController

@RequestMapping("/crud")
public class EmployeeUpdateServiceController {
	
    private final Service1 client;

    @Autowired
    public EmployeeUpdateServiceController(Service1 client) {
        this.client = client;
    }
	
	private Connection con;
	 @GetMapping("/update")
	 public String getCon(@PathParam("id") int id,@PathParam("name") String name, @PathParam("salary") int salary ) throws Exception{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb", "root", "abes290");
			try{
				Statement stmt = con.createStatement();
				String select = "SELECT * FROM employee WHERE id = '" + id + "'";
                ResultSet rs = stmt.executeQuery(select);
                
                ArrayList<ArrayList> listOLists = new ArrayList<>();
                
                while (rs.next()) {
                    ArrayList<Object> emp = new ArrayList<>();
                    emp.add(rs.getInt("id"));
                    emp.add(rs.getString("name"));
                    emp.add(rs.getInt("salary"));
                    listOLists.add(emp);
                }
                if(listOLists.size()>0) {
                	String update = "update employee set name = '"+ name +"', salary = " + salary + " where id = " + id;
                	stmt.executeUpdate(update);
                	System.out.println(name + " is updated  successfully! id is  " + id);
                	return (name + " is updated  successfully! id is " + id);                	
                }
                else {
                	String responseData = client.getCon(id,name,salary);
                	
                	// Further processing or returning the data
                	return "" + responseData;                	
                }
			}
			catch(Exception e) {
				
				System.out.println("SQL error" + e);
				return "Error Occured ";
			}
//			return "Unconditional Error";
		}
}

