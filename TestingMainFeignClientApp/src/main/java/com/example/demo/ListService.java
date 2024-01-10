package com.example.demo;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(name = "EmployeedisplayServiceOperation", url = "http://localhost:8087/crud")
public interface ListService {
    @GetMapping("/list")
   List<List<String>> getCon();
}