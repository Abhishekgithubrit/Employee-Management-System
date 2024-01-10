package com.example.demo;
import org.springframework.ui.Model;	

import java.sql.Connection;
// import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.websocket.server.PathParam;
import jakarta.ws.rs.FormParam;


@Controller
@RequestMapping("/")
public class MainFeignClientAppController{
	
	
	private final InsertService client1;
	private final DeleteService client2;
	private final UpdateService client3;
	private final ListService client4;
	
	
	@Autowired
    public  MainFeignClientAppController(InsertService client1,DeleteService client2,UpdateService client3, ListService client4) {
        this.client1 = client1;
        this.client2 = client2;
        this.client3 = client3;
        this.client4 = client4;
    }
	
	@PostMapping("/insertdata")
    public String getCon(@FormParam("id") int id,@FormParam("name") String name, @FormParam("salary") int salary,Model model) {
        // Call the Feign client method to get data from the service
        String responseData = client1.getCon(id,name,salary);
        model.addAttribute("data",responseData);
        

        // Further processing or returning the data
        return "insertemployee";
    }
	
	@PostMapping("/deletedata")
    public String getdeletedata(@FormParam("id") int id,Model model) {
        // Call the Feign client method to get data from the service
        String responseData = client2.getCon(id);
        model.addAttribute("data",responseData);
        return "deleteemployee";
    }
	
	@PostMapping("/updatedata")
    public String getupdatedata(@FormParam("id") int id,@FormParam("name") String name, @FormParam("salary") int salary,Model model) {
        // Call the Feign client method to get data from the service
        String responseData = client3.getCon(id,name,salary);
        model.addAttribute("data",responseData);
        // Further processing or returning the data
        return "updateemployee";
    }
	
	@GetMapping("/employeedata")
	public String getdataservice(Model model) {
		// Call the Feign client method to get data from the service
		
		List<List<String>> responseData = client4.getCon();
//		int n = responseData.size();
//		model.addAttribute("n",n); 
	    model.addAttribute("responseData", responseData); return "listemployee";
	}
	
	
	
	
	@GetMapping("/about")
	public String about() {
		return "about";
	}
	@GetMapping("/employee")
	public String employeelog() {
		return "employeelogin";
	}
	@GetMapping("/contact")
	public String contact() {
		return "contactus";
	}
	@GetMapping("/admin")
	public String admin() {
		return "adminlogin";
	}
	
	@GetMapping("/adminregister")
	public String adminregister() {
		return "adminregister";
	}
	
	
	
	
	@GetMapping("/insertemployee")
	public String insertemployee() {
		return "insertemployee";
	}
	@GetMapping("/deleteemployee")
	public String deleteemployee() {
		return "deleteemployee";
	}
	@GetMapping("/updateemployee")
	public String updateemployee() {
		return "updateemployee";
	}
	@GetMapping("/listemployee")
	public String listemployee() {
		return "listemployee";
	}
	@GetMapping("/employeeregister")
	public String employeeregister() {
		return "employeeregister";
	}
	
	
	
	@PostMapping("/employeelogin")
    public String getCon(
            @FormParam("loginid") String loginid,
            @FormParam("password") String password,
            HttpServletResponse response,
            HttpServletRequest request,Model model) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Prj", "root", "abes290")) {
            try (Statement stmt = con.createStatement()) {
                String select = "SELECT * FROM employee WHERE employee_gmail = '" + loginid + "'";
                ResultSet rs = stmt.executeQuery(select);
                
                ArrayList<ArrayList> listOLists = new ArrayList<>();
                
                while (rs.next()) {
                    ArrayList<Object> emp = new ArrayList<>();
                    emp.add(rs.getInt("employee_id"));
                    emp.add(rs.getString("employee_name"));
                    emp.add(rs.getInt("employee_phone_no"));
                    emp.add(rs.getString("employee_gmail"));
                    emp.add(rs.getInt("employee_salary"));
                    emp.add(rs.getString("employee_password"));
                    listOLists.add(emp);
                }

                System.out.println(loginid + password);
                System.out.println(listOLists);
                if (listOLists.isEmpty()) {
                    model.addAttribute("employeeNotFound", true);
                    model.addAttribute("loginid", loginid); // Retain the login ID
                    model.addAttribute("password", password); // Retain the password (not recommended, for demonstration purposes)
                    model.addAttribute("errorMessage", "Employee not found in the database");
                    return "employeelogin";
                }


                // Example of using equals for string comparison
                if (loginid.equals(listOLists.get(0).get(3).toString())) {
                    if(password.equals(listOLists.get(0).get(5).toString())) {
                    	model.addAttribute("employeeName", listOLists.get(0).get(1).toString());
                    	return ("welcome");                	
                    }
                    else {
                    	model.addAttribute("employee", "you are not able to login successfully "+listOLists.get(0).get(1).toString());
                    	return ("employeelogin");
                    }
                } 
                else {
                    return ("about");
                }
            }
        } catch (Exception e) {
            System.out.println(e);
            response.sendRedirect("index.html");
        }
		return null;
    }
	
	
	
	@PostMapping("/adminlogin")
    public String getmethod(
            @FormParam("loginid") String loginid,
            @FormParam("password") String password,
            HttpServletResponse response,
            HttpServletRequest request,Model model) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Prj", "root", "abes290")) {
            try (Statement stmt = con.createStatement()) {
                String select = "SELECT * FROM employee WHERE employee_gmail = '" + loginid + "'";
                ResultSet rs = stmt.executeQuery(select);
                
                ArrayList<ArrayList> listOLists = new ArrayList<>();
                
                while (rs.next()) {
                    ArrayList<Object> emp = new ArrayList<>();
                    emp.add(rs.getInt("employee_id"));
                    emp.add(rs.getString("employee_name"));
                    emp.add(rs.getInt("employee_phone_no"));
                    emp.add(rs.getString("employee_gmail"));
                    emp.add(rs.getInt("employee_salary"));
                    emp.add(rs.getString("employee_password"));
                    listOLists.add(emp);
                }

                System.out.println(loginid + password);
                System.out.println(listOLists);
                if (listOLists.isEmpty()) {
                    model.addAttribute("adminNotFound", true);
                    model.addAttribute("loginid", loginid); // Retain the login ID
                    model.addAttribute("password", password); // Retain the password (not recommended, for demonstration purposes)
                    model.addAttribute("errorMessage", "Admin not found in the database");
                    return "adminlogin";
                }

                
                if (loginid.equals(listOLists.get(0).get(3).toString())) {
                    if(password.equals(listOLists.get(0).get(5).toString())) {
                    	model.addAttribute("employeeName", listOLists.get(0).get(1).toString());
                    	return ("admin");                	
                    }
                    else {
                    	model.addAttribute("employee", "you are not able to login successfully "+listOLists.get(0).get(1).toString());
                    	return ("adminlogin");
                    }
                } 
                else {
                    return ("adminlogin");
                }
            }
        } catch (Exception e) {
            System.out.println(e);
            response.sendRedirect("index.html");
        }
		return null;
    }
	
	
	// Services Implementation 
	
	
}
