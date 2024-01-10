package com.example.demo;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(name = "UpdateOperation", url = "http://localhost:9090/crud")
public interface updateservice {
	@GetMapping("/update")
    String getCon(
            @RequestParam("id") int id,
            @RequestParam("name") String name,
            @RequestParam("salary") int salary
    );
}
