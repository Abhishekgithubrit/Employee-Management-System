package com.example.demo;

import org.jvnet.hk2.annotations.Service;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;


@FeignClient(name = "displayOperation", url = "http://localhost:9091/crud")
public interface Services {
    @GetMapping("/list")
    String getCon();
}