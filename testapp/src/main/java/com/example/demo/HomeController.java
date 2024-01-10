package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.websocket.server.PathParam;



@RestController
@RequestMapping("/my-controller")
public class HomeController{

    private final Services feignClient;
    private final Service1 client;
    private final updateservice client2;

    @Autowired
    public HomeController(Services feignClient, Service1 client,updateservice client2) {
        this.feignClient = feignClient;
        this.client = client;
        this.client2 = client2;
    }

    @GetMapping("/get-data")
    public String getDataFromService() {
        // Call the Feign client method to get data from the service
        String responseData = feignClient.getCon();

        // Further processing or returning the data
        return "Controller: " + responseData;
    }
    
    @GetMapping("/get-service")
    public String getData(@PathParam("id") int id,@PathParam("name") String name, @PathParam("salary") int salary) {
        // Call the Feign client method to get data from the service
        String responseData = client.getCon(id,name,salary);

        // Further processing or returning the data
        return "Controller: " + responseData;
    }
    
    @GetMapping("/updateservices")
    public String hello(@PathParam("id") int id,@PathParam("name") String name, @PathParam("salary") int salary) {
    	String responseData = client2.getCon(id,name,salary);

        // Further processing or returning the data
        return "Controller: " + responseData;
    }
//    
    @GetMapping("/home")
    public String geted() {
    	return "geted";
    }
}

