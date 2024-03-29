package com.example.demo;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(name = "EmployeeInsertServiceOperation", url = "http://localhost:8086/crud")
public interface InsertService {

    @GetMapping("/insert")
    String getCon(
            @RequestParam("id") int id,
            @RequestParam("name") String name,
            @RequestParam("salary") int salary
    );
}
