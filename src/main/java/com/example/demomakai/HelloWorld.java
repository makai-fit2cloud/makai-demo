package com.example.demomakai;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorld {

    @RequestMapping("hello")
    public String sayHello() {
        return "hello world  ceshi2";
    }

}
