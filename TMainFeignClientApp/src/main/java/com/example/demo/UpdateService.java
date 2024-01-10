package com.example.demo;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(name = "EmployeeUpdateServiceOperation", url = "http://localhost:8088/crud")
public interface UpdateService {
	@GetMapping("/update")
    String getCon(
            @RequestParam("id") int id,
            @RequestParam("name") String name,
            @RequestParam("salary") int salary
    );
}
