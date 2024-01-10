package com.example.demo;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(name = "InsertOperation", url = "http://localhost:9009/crud")
public interface Service1 {

    @GetMapping("/insert")
    String getCon(
            @RequestParam("id") int id,
            @RequestParam("name") String name,
            @RequestParam("salary") int salary
    );
}
