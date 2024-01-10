package com.example.demo;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(name = "EmployeeDeleteServiceOperation", url = "http://localhost:8085/crud")
public interface DeleteService {

    @GetMapping("/delete")
    String getCon(
            @RequestParam("id") int id
    );
}